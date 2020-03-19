/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 13:00:48
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-20 06:41:00
*/

#include "honeybee.h"
#include <stdio.h>

#define NUMEDGES 100

float randy(int max) {
    return ((float)rand() / (float)RAND_MAX) * max;
}

void printBinary(Dout_t bus) {
    for (int i = 0; i < DIM*DIM*DIM; i++) {
        printf("%d", !!((bus << i) & 0x8000000000000000));
        if ((i+1) % 4 == 0) printf(" ");
    }
    printf("\n");
}

int main(int argc, char* argv[]) {

    // Error Tracking
    int errors = 0;

    // Configure Randomness
    srand ((unsigned int) time(NULL)*10000000);

    Dout_t result;

    // Call HoneyBee
    clock_t start, finish, total;
    	start = clock() / (CLOCKS_PER_SEC / 1000000);
        result = honeybee(
            (edge_t) {
                .p1 = (point_t) {.x=0., .y=0., .z=0.},
                .p2 = (point_t) {.x=2., .y=1., .z=0.}
            }
        );
        finish = clock() / (CLOCKS_PER_SEC / 1000000);
        total = (finish - start);

    result = 2;

    // Print Results
    printf("********************************************\n");
    printf("HoneyBee Test completed with %d errors in %ld us\n", errors, total);
    printBinary(result);
    printf("************************************************\n");
    return 0;
}
