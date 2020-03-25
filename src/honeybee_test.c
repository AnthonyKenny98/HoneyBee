/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 13:00:48
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-25 18:28:57
*/

#include "honeybee.h"
#include <stdio.h>
#include <time.h>

#define NUM_EDGES 2

#if DIM == 2
    #define MSB 0x80
#elif DIM == 4
    #define MSB 0x8000000000000000
#endif

float randy(int max) {
    return ((float)rand() / (float)RAND_MAX) * max;
}

// Print binary representation of Dout_t representing data bus
void printBinary(Dout_t bus) {
    for (int i = 0; i < DIM*DIM*DIM; i++) {
        printf("%d", !!((bus << i) & MSB));
        if ((i+1) % 4 == 0) printf(" ");
    }
}

int main(int argc, char* argv[]) {
    int errors = 0;

    edge_t edges[NUM_EDGES] = {
        (edge_t) {
            .p1 = (point_t) {.x=0., .y=1.5, .z=1.5},
            .p2 = (point_t) {.x=1.5, .y=1.5, .z=1.5}
        },
        (edge_t) {
            .p1 = (point_t) {.x=0.5, .y=0.5, .z=0.5},
            .p2 = (point_t) {.x=0.5, .y=0.5, .z=1.5}
        },
    };
    int expected[NUM_EDGES] = {
        0b11000000,
        0b00010001,

    };
    
    Dout_t result;
    int i = 0;
    clock_t start, finish, total;
    // Call HoneyBee
    start = clock();
    result = honeybee(edges[i]);
    finish = clock();
    if (result != expected[i]) {
        errors++;
        printf("Edge {(%f,%f,%f)=>(%f,%f,%f)}  |  Result = ", 
            edges[i].p1.x, edges[i].p1.y, edges[i].p1.z,
            edges[i].p2.x, edges[i].p2.y, edges[i].p2.z);
        printBinary(result);
        printf("  |  Expected = ");
        printBinary(expected[i]);
        printf("\n");
    }

    total = (finish - start) / (CLOCKS_PER_SEC / 1000000);
    
    // Print Results
    printf("********************************************\n");
    printf("HoneyBee Test completed with %d errors in %lu us\n", errors, total);
    printf("************************************************\n");
    return 0;
}
