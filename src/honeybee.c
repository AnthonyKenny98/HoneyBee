/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 12:59:19
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-20 08:49:21
*/
#include "honeybee.h"

// TODO, expand this. Should be able to hard code it for max value
Dout_t bit_vals[64] = {
    1, 2, 4, 8, 16, 32, 64, 128,
    256, 512, 1024, 2048, 4096, 8192, 16348, 32768,
    65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388208,
    16776416, 33552832, 67105664, 134211328, 268422656, 536845312, 1073690624, 2147381248
};

float greaterThan(float x1, float x2, float x0) {
    return (x0-x1)/(x2-x1);
}

float lessThan(float x1, float x2, float x0, float X) {
    return (x0-x1+X)/(x2-x1);
}

float maxOf3(float x, float y, float z) {
    float max;
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
    if (x < y) {
        min = x;
        if (z < x) min = z;
    } else {
        min = y;
        if (z < y) min = z;
    }
    return min;
}

bool lineIntersectGrid(point_t grid, edge_t edge) {

    float max = minOf3(
        lessThan(edge.p1.x, edge.p2.x, grid.x, RESOLUTION),
        lessThan(edge.p1.y, edge.p2.y, grid.y, RESOLUTION),
        lessThan(edge.p1.z, edge.p2.z, grid.z, RESOLUTION)
    );
    float min = maxOf3(
        greaterThan(edge.p1.x, edge.p2.x, grid.x),
        greaterThan(edge.p1.y, edge.p2.y, grid.y),
        greaterThan(edge.p1.z, edge.p2.z, grid.z)
    );

    return min < max;
}

// HoneyBee Function
Dout_t honeybee(edge_t edge) {
    
    // Collision Bus: Set for a datatype that represents correct bus width
    Dout_t collisions = 0;

    int b = 0;
    // Iterate through potential swept area
	honeybee_upper_loop:for (int k=0; k<DIM; k++) {
        honeybee_mid_loop:for (int j=0; j<DIM; j++) {
            honeybee_lower_loop:for (int i=0; i<DIM; i++) {
                
                // Check collision with grid
                point_t grid = {.x = (float) i, .y = (float) j, .z = (float) k};
                if (lineIntersectGrid(grid, edge)) {
                    collisions = collisions | (0b1 << b);
                }
            b++;
            }
        }
    }
    return collisions;
}
