/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 13:00:48
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-02-21 19:18:27
*/

#include "honeybee.h"

float randy(int max) {
    return ((float)rand() / (float)RAND_MAX) * max;
}

int main(int argc, char* argv[]) {

    // Error Tracking
    int errors = 0;

    // Configure Randomness
    srand ((unsigned int) time(NULL)*10000000);

    // Setup OGM
    int ogm[XDIM][YDIM][ZDIM];
    for (int i=0; i<XDIM; i++) {
        for (int j=0; j<YDIM; j++) {
            for (int k=0; k<ZDIM; k++) ogm[i][j][k] = 0;
        }
    }

    // Setup Edges
    edge_t edges[NUMEDGES];
    for (int ii=0; ii<NUMEDGES; ii++) {
        edges[ii] = (edge_t) {
        .p1 = (point_t) {.x=randy(XDIM), .y=randy(YDIM), .z=randy(ZDIM)},
        .p2 = (point_t) {.x=randy(XDIM), .y=randy(YDIM), .z=randy(ZDIM)}
        };
    }

    // Call HoneyBee
    clock_t start, finish;
    start = clock() / (CLOCKS_PER_SEC / 1000);
    errors += honeybee(
        (edge_t) {
            .p1 = (point_t) {.x=0., .y=0., .z=0.},
            .p2 = (point_t) {.x=3., .y=3., .z=3.}
        }
    );
    finish = clock() / (CLOCKS_PER_SEC / 1000);

    // Print Results
    printf("********************************************\nHoneyBee Test completed with %d errors in %ld ms\n************************************************\n", errors, (finish - start));
    return 0;
}
