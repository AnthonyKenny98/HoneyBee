/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-19 17:27:45
*/
#include "honeybee.h"

// TODO, expand this. Should be able to hard code it for max value
char bit_vals[8] = {1, 2, 4, 8, 16, 32, 64, 128};

float greaterThan(float x1, float x2, float x0) {
    return (x0-x1)/(x2-x1);
}

float lessThan(float x1, float x2, float x0, float X) {
    return (x0-x1+X)/(x2-x1);
}

float maxOf3(float x, float y, float z) {
    float max;
    // Implementation 1
    if (x > y) {
        max = x;
        if (z > x) max = z;
    } else {
        max = y;
        if (z > y) max = z;
    }
    return max;
}

float minOf3(float x, float y, float z) {
    float min;
    // Implementation 1
    if (x < y) {
        min = x;
        if (z < x) min = z;
    } else {
        min = y;
        if (z < y) min = z;
    }
    return min;
}

bool lineIntersectPrism(point_t obs, edge_t edge) {

    float max = minOf3(
        lessThan(edge.p1.x, edge.p2.x, obs.x, RESOLUTION),
        lessThan(edge.p1.y, edge.p2.y, obs.y, RESOLUTION),
        lessThan(edge.p1.z, edge.p2.z, obs.z, RESOLUTION)
    );
    float min = maxOf3(
        greaterThan(edge.p1.x, edge.p2.x, obs.x),
        greaterThan(edge.p1.y, edge.p2.y, obs.y),
        greaterThan(edge.p1.z, edge.p2.z, obs.z)
    );

    return min < max;
}

char honeybee(edge_t edge) {
    char collisions = 0;

	honeybee_label5:for (int i=0; i<DIM; i++) {
        honeybee_label4:for (int j=0; j<DIM; j++) {
            honeybee_label3:for (int k=0; k<DIM; k++) {
                point_t obs = {.x = (float) i, .y = (float) j, .z = (float) k};
                if (lineIntersectPrism(obs, edge)) {
                    collisions = collisions | bit_vals[i+j+k];
                }
            }
        }
    }
    return collisions;
}
