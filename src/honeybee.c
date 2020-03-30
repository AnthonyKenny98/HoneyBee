/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-30 13:51:29
*/
#include "honeybee.h"

#include <stdio.h>

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

// HoneyBee Function
Dout_t honeybee(edge_t edge) {
    
    // Collision Bus: Set for a datatype that represents correct bus width
    Dout_t collisions = 0;

    // Seperate internal collision busses
    Dout_t collisions_z = 0;
    Dout_t collisions_y = 0;
    Dout_t collisions_x = 0;

    // Seperate edges
    // edge_t edge_z = edge;
    edge_t edge_y = (edge_t) {
        .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
        .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y}
    };
    edge_t edge_x = (edge_t) {
        .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
        .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x}
    };

    point_t POI_z, POI_x, POI_y;
    Dout_t or_z = 1;
    Dout_t or_y = 1;
    Dout_t or_x = 1;

    for (int z=0; z<DIM; z++) {
        POI_z = lineIntersectsPlane(edge, z);
        if (pointOnSegment(POI_z, edge)) {
            collisions_z = (collisions_z | (or_z << shiftAmount((int) POI_z.x, (int) POI_z.y, z)));
            collisions_z = (collisions_z | (or_z << shiftAmount((int) POI_z.x, (int) POI_z.y, z-1)));
        }
    }

    edge_t newedge = (edge_t) {
        .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
        .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y}
    };
    for (int y=0; y<DIM; y++) {
        POI_y = lineIntersectsPlane(edge_y, y);
        POI_y = (point_t) {.x=POI_y.x, .y=POI_y.z, .z=POI_y.y};
        if (pointOnSegment(POI_y, edge)) {
            collisions_y = (collisions_y | (or_y << shiftAmount((int) POI_y.x, y, (int) POI_y.z)));
            collisions_y = (collisions_y | (or_y << shiftAmount((int) POI_y.x, y-1, (int) POI_y.z)));
        }
    }

    newedge = (edge_t) {
        .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
        .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x}
    };
    for (int x=0; x<DIM; x++) {
        POI_x = lineIntersectsPlane(edge_x, x);
        POI_x = (point_t) {.x=POI_x.z, .y=POI_x.y, .z=POI_x.x};
        if (pointOnSegment(POI_x, edge)) {
            collisions_x = (collisions_x | (or_x << shiftAmount(x, (int) POI_x.y, (int) POI_x.z)));
            collisions_x = (collisions_x | (or_x << shiftAmount(x - 1, (int) POI_x.y, (int) POI_x.z)));
        }
    }

    collisions = (collisions_z | collisions_y) | collisions_x;
    return collisions;
}
