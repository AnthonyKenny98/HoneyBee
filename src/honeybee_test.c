/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 13:00:48
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-30 14:15:05
*/

#include "honeybee.h"
#include <stdio.h>
#include <time.h>

#define NUM_EDGES 1

#if DIM == 2
    #define MSB 0x80
#elif DIM == 4
    #define MSB 0x8000000000000000
#endif

float randy(int max) {
    return ((float)rand() / (float)RAND_MAX) * max;
}

point_t randomPoint() {
    return (point_t) {.x=randy(DIM), .y=randy(DIM), .z=randy(DIM)};
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
    Dout_t result;

    edge_t edges[NUM_EDGES];
    int i;
    for (i=0; i<NUM_EDGES; i++) {
        edges[i] = (edge_t) {
            // .p1=randomPoint(),
            // .p2=randomPoint()
            .p1 = (point_t) {.x=0.5, .y=0.5, .z=0.5},
            .p2 = (point_t) {.x=1.5, .y=0.5, .z=0.5},
        };
    }
    
    clock_t start, finish;
    float total;
    start = clock();
    for (i=0; i<NUM_EDGES; i++) { 
        // Call HoneyBee
        result = honeybee(edges[i]);
    }
    finish = clock();


    total = (float)(finish - start) / (CLOCKS_PER_SEC / 1000000);
    
    // Print Results
    printf("********************************************\n");
    printf("HoneyBee Test completed with in %f us (avg = %f us)\n", total, total/NUM_EDGES);
    printBinary(result);
    printf("\n************************************************\n");
    return 0;
}
