/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-25 16:31:00
*/
#include "honeybee.h"
#include <stdio.h>
#include <math.h>

// Return true if point lies within grid, else false
bool pointInGrid(point_t point, point_t grid) {
    return (
        (grid.x <= point.x && point.x <= grid.x + RESOLUTION) &&
        (grid.y <= point.y && point.y <= grid.y + RESOLUTION) &&
        (grid.z <= point.z && point.z <= grid.z + RESOLUTION)
    );
}

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

bool pointOnFace(point_t p, point_t grid) {
    return (
        ((grid.x <= p.x) && (p.x <= grid.x + RESOLUTION)) &&
        ((grid.y <= p.y) && (p.y <= grid.y + RESOLUTION)) &&
        ((grid.y <= p.y) && (p.y <= grid.y + RESOLUTION))
    );
}

bool segmentIntersectsFace(edge_t edge, point_t face) {
    // Setup 3 points on the associated plane
    point_t P, Q, R;
    P = face;
    Q = face;
    Q.x+=RESOLUTION;
    R = face;
    R.y+=RESOLUTION;

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
    // printf("        POI = (%f,%f, %f)\n", POI.x, POI.y, POI.z);

    // Check if point is within bounds of edge
    bool pointOnEdge = pointOnSegment(POI, edge);
    // printf("        Point on segment = %d\n", pointOnEdge);

    // Check if point is within bounds of face
    bool pointOnface = pointOnFace(POI, P);
    // printf("        point on face = %d\n", pointOnface);
    // printf("    segmentIntersectsFace= %d\n", (pointOnEdge && pointOnface));

    return pointOnEdge && pointOnface;
}

bool segmentIntersectsGrid(edge_t edge, point_t grid) {
    bool segmentIntersectsAnyFace = (
        // Z Plane
        segmentIntersectsFace(edge, grid) ||
        segmentIntersectsFace(edge, 
            (point_t) {.x=grid.x, .y=grid.y, .z=grid.z+RESOLUTION}) ||
        
        // Y Plane
        segmentIntersectsFace(//edge,
            (edge_t) {
                .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
                .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y},
            }, 
            (point_t) {.x=grid.x, .y=grid.z, .z=grid.y}) ||
        segmentIntersectsFace(//edge,
            (edge_t) {
                .p1=(point_t) {.x=edge.p1.x, .y=edge.p1.z, .z=edge.p1.y},
                .p2=(point_t) {.x=edge.p2.x, .y=edge.p2.z, .z=edge.p2.y},
            }, 
            (point_t) {.x=grid.x, .y=grid.z, .z=grid.y+RESOLUTION}) ||

        // X Plane
        segmentIntersectsFace(//edge,
            (edge_t) {
                .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
                .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x},
            }, 
            (point_t) {.x=grid.z, .y=grid.y, .z=grid.x}) ||
        segmentIntersectsFace(//edge,
            (edge_t) {
                .p1=(point_t) {.x=edge.p1.z, .y=edge.p1.y, .z=edge.p1.x},
                .p2=(point_t) {.x=edge.p2.z, .y=edge.p2.y, .z=edge.p2.x},
            }, 
            (point_t) {.x=grid.z, .y=grid.y, .z=grid.x+RESOLUTION})
    );
    bool bothEndPointsInGrid = (
        pointInGrid(edge.p1, grid) && pointInGrid(edge.p2, grid)
    );
    return segmentIntersectsAnyFace || bothEndPointsInGrid;
}


// HoneyBee Function
Dout_t honeybee(edge_t edge) {
    
    // Collision Bus: Set for a datatype that represents correct bus width
    Dout_t collisions = 0;

    int b = 0;
    // Iterate through potential swept area
    for (int k=0; k<DIM*RESOLUTION; k+=RESOLUTION) {
        for (int j=0; j<DIM*RESOLUTION; j+=RESOLUTION) {
              for (int i=0; i<DIM*RESOLUTION; i+=RESOLUTION) {
                
                // Check collision with grid
                point_t grid = {.x = (base_t) i, .y = (base_t) j, .z = (base_t) k};
                printf("(%d, %d, %d)\n", i, j, k);
                if (segmentIntersectsGrid(edge, grid)) {
                    printf("    COLLISION\n");
                    collisions = collisions | (0b1 << b);
                }
            b++;
            }
        }
    }
    return collisions;
}
