/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-02-21 21:37:38
*/
#include "honeybee.h"

float greaterThan(float x1, float x2, float x0) {
    return (x0-x1)/(x2-x1);
}

float lessThan(float x1, float x2, float x0, float X) {
    return (x0-x1+X)/(x2-x1);
}

float maxFloat3(float x, float y, float z) {
    float max;
    // Implementation 1
    if (x > y) {
        max = x;
        if (z > x) max = z;
    } else {
        max = y;
        if (z > y) max = z;
    }
    // Implementation 2
    // if (x > y) {
    //     max = x;
    // } else {
    //     max = y;
    // }
    // if (z > max) max = z;
    return max;
}

float minFloat3(float x, float y, float z) {
    float min;
    // Implementation 1
    if (x < y) {
        min = x;
        if (z < x) min = z;
    } else {
        min = y;
        if (z < y) min = z;
    }
    // Implementation 2
    // if (x < y) {
    //     max = x;
    // } else {
    //     max = y;
    // }
    // if (z < max) max = z;
    return min;
}

bool lineIntersectPrism(point_t obs, edge_t edge) {

    float max = minFloat3(
        lessThan(edge.p1.x, edge.p2.x, obs.x, RESOLUTION),
        lessThan(edge.p1.y, edge.p2.y, obs.y, RESOLUTION),
        lessThan(edge.p1.z, edge.p2.z, obs.z, RESOLUTION)
    );
    float min = maxFloat3(
        greaterThan(edge.p1.x, edge.p2.x, obs.x),
        greaterThan(edge.p1.y, edge.p2.y, obs.y),
        greaterThan(edge.p1.z, edge.p2.z, obs.z)
    );

    return min < max;
}

int honeybee(edge_t edge) {
    int collisionCount = 0;

	honeybee_label5:for (int i=0; i<XDIM; i++) {
        honeybee_label4:for (int j=0; j<YDIM; j++) {
            honeybee_label3:for (int k=0; k<ZDIM; k++) {
                point_t obs = {.x = (float) i, .y = (float) j, .z = (float) k};
                if (lineIntersectPrism(obs, edge)) collisionCount++;
            }
        }
    }
    return collisionCount;
}
