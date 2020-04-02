/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-31 14:48:16
*/
#include "honeybee.h"

// Return true if point lies within grid, else false

vector_t vector(point_t p1, point_t p2) {
    return (vector_t) {
        .x = p1.x - p2.x,
        .y = p1.y - p2.y,
        .z = p1.z - p2.z,
    };
}

vector_t crossProduct(vector_t v1, vector_t v2) {
    return (vector_t) {
        .x = (v1.y * v2.z - v1.z * v2.y),
        .y = (v1.z * v2.x - v1.x * v2.z),
        .z = (v1.x * v2.y - v1.y * v2.x)
    };
}

base_t dotProduct(vector_t v1, point_t v2) {
    return (v1.x * v2.x) + (v1.y * v2.y) + (v1.z * v2.z);
}

base_t paramT(vector_t norm, base_t plane_d, edge_t e) {
    return ((plane_d - (norm.x*e.p1.x + norm.y*e.p1.y + norm.z*e.p1.z)) /
        (norm.x*(e.p2.x - e.p1.x) + norm.y*(e.p2.y - e.p1.y) + norm.z*(e.p2.z - e.p1.z))
    );
}

point_t pointOfIntersection(base_t T, edge_t edge) {
    return ( (point_t) {
        .x = edge.p1.x + T*(edge.p2.x - edge.p1.x),
        .y = edge.p1.y + T*(edge.p2.y - edge.p1.y),
        .z = edge.p1.z + T*(edge.p2.z - edge.p1.z),
    });
}

bool pointOnSegment(point_t p, edge_t e) {
    return (
        ((min(e.p1.x, e.p2.x) <= p.x) && (p.x <= max(e.p1.x, e.p2.x))) &&
        ((min(e.p1.y, e.p2.y) <= p.y) && (p.y <= max(e.p1.y, e.p2.y))) &&
        ((min(e.p1.z, e.p2.z) <= p.z) && (p.z <= max(e.p1.z, e.p2.z)))
    );
}

point_t lineIntersectsPlane(edge_t edge, float plane) {
    // Setup 3 points on the plane
    point_t P, Q, R;
    P = (point_t) {.x=0, .y=0, .z=plane};
    Q = (point_t) {.x=RESOLUTION, .y=0, .z=plane};
    R = (point_t) {.x=0, .y=RESOLUTION, .z=plane};

     // Get vectors defining plane
    vector_t PQ = vector(P, Q);
    vector_t PR = vector(P, R);

    // Normal to the plane
    vector_t norm = crossProduct(PQ, PR);

    // dot product of normal and point on plane
    base_t dot = dotProduct(norm, P);

    // Parameter T shared by plane and line
    base_t T = paramT(norm, dot, edge);

    // Point of intersection
    point_t POI = pointOfIntersection(T, edge);

    return POI;
}

int shiftAmount(int i, int j, int k) {
    return i + (j << SHAMT) + ((k << SHAMT) << SHAMT);
}

Dout_t checkAxis(int num, edge_t edge) {
    Dout_t collisions[DIM] = {0, 0, 0, 0};
    Dout_t returnCollisions = 0;
    Dout_t or = 1;
    point_t POI;
    edge_t _edge;

    if (num==1) {
        _edge = (edge_t) {
                .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
                .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y}
            };
    } else if (num == 2) {
        _edge = (edge_t) {
                .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
                .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x}
            };
    }

    // Check z Plane
    int i;
    checkAxis_loop:for (i=0; i<DIM; i++) {
        

        if (num==0) {
            POI = lineIntersectsPlane(edge, i);
            if (pointOnSegment(POI, edge)) {
                collisions[i] = (
                    (or << shiftAmount((int) POI.x, (int) POI.y, i)) |
                    (or << shiftAmount((int) POI.x, (int) POI.y, i-1)));
            }
        }

        else if (num == 1) {
            POI = lineIntersectsPlane(edge, i);
            POI = (point_t) {.x=POI.x, .y=POI.z, .z=POI.y};
            if (pointOnSegment(POI, _edge)) {
                collisions[i] = (
                    (or << shiftAmount((int) POI.x, i, (int) POI.z)) |
                    (or << shiftAmount((int) POI.x, i-1, (int) POI.z)));
            }
        }

        else {
            POI = lineIntersectsPlane(edge, i);
            POI = (point_t) {.x=POI.z, .y=POI.y, .z=POI.x};
            
            if (pointOnSegment(POI, _edge)) {
                collisions[i] = 
                    ((or << shiftAmount(i, (int) POI.y, (int) POI.z)) |
                    (or << shiftAmount(i - 1, (int) POI.y, (int) POI.z)));
            }
        }
    }

    for (i=0;i<DIM;i++) {
        returnCollisions = (returnCollisions | collisions[i]);
    }
    return returnCollisions;
}

// HoneyBee Function
Dout_t honeybee(edge_t edge) {
    
    // Collision Bus: Set for a datatype that represents correct bus width
    Dout_t collisions = 0;

    // Seperate internal collision busses
    Dout_t collisions_z = 0;
    Dout_t collisions_y = 0;
    Dout_t collisions_x = 0;

    // Seperate edges
    edge_t edge_y = (edge_t) {
        .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
        .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y}
    };
    edge_t edge_x = (edge_t) {
        .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
        .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x}
    };


    collisions_z = checkAxis(0, edge);
    collisions_y = checkAxis(1, edge_y);
    collisions_x = checkAxis(2, edge_x);

    collisions = (collisions_z | collisions_y) | collisions_x;
    return collisions;
}

// ONLY FOR COMPILING INTO RV32I
// int main(int argc, char* argv[]) {
//     honeybee(
//         (edge_t) {
//             .p1 = (point_t) {.x=0.5, .y=0.5, .z=0.5},
//             .p2 = (point_t) {.x=2.5, .y=1.5, .z=3.5},
//         });
//     return 0;
// }
