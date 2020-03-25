/*
* @Author: AnthonyKenny98
* @Date:   2020-02-20 13:00:48
* @Last Modified by:   AnthonyKenny98
* @Last Modified time: 2020-03-25 16:27:29
*/

#include "honeybee.h"
#include <stdio.h>

#define NUMEDGES 100

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
    printf("\n");
}

int main(int argc, char* argv[]) {

    // point_t P, Q, R;
    // P = (point_t) {.x=1, .y=2, .z=3};
    // Q = (point_t) {.x=2, .y=2, .z=3};
    // R = (point_t) {.x=1, .y=3, .z=3};


    // edge_t edge = (edge_t) {
    //     .p1 = (point_t) {.x=1, .y=2, .z=1},
    //     .p2 = (point_t) {.x=4, .y=5, .z=6}
    // };

    // // Test vector function
    // vector_t PQ = vector(P, Q);
    // printf("Vector PQ = <%f, %f, %f> (<-1,0,0> Expected)\n", PQ.x, PQ.y, PQ.z);
    // vector_t PR = vector(P, R);
    // printf("Vector PQ = <%f, %f, %f> (<0,-1,0> Expected)\n", PR.x, PR.y, PR.z);

    // // Test crossProduct function
    // vector_t cross = crossProduct(PQ, PR);
    // printf("Cross PQ x PR = <%f, %f, %f> (<0,0,1> Expected)\n", cross.x, cross.y, cross.z);

    // base_t dot = dotProduct(cross, P);
    // printf("Dot of cross (norm) and P = %f (3 Expected)\n", dot);  
    
    // base_t T = paramT(cross, dot, edge);
    // printf("T = %f (0.4 Expected)\n", T);

    // point_t POI = pointOfIntersection(T, edge);
    // printf("POI = (%f,%f, %f) ((2.2, 3.2, 3)) Expected)\n", POI.x, POI.y, POI.z);
    // Dout_t result;

    // bool pointOnEdge = pointOnSegment(POI, edge);
    // printf("Point on segment = %d (1 expected)\n", pointOnEdge);

    // bool pointOnface = pointOnFace(POI, P);
    // printf("Point on face = %d (1 expected)\n", pointOnface);

    // bool test = segmentIntersectsFace(edge, P);
    // printf("edgeIntersectsFace = %d (1 expected)\n", test);

    // printf("\n\n MORE TESTS \n\n");

    // edge_t edge = (edge_t) {
    //     .p1 = (point_t) {.x=0, .y=0, .z=0},
    //     .p2 = (point_t) {.x=0.5, .y=0.5, .z=0.5}
    // };

    // point_t grid = (point_t) {.x=1, .y=1, .z=1};

    // printf("segmentIntersectsGrid = %d\n", segmentIntersectsGrid(edge, grid));



    // Call HoneyBee
    Dout_t result = honeybee(
        (edge_t) {
            .p1 = (point_t) {.x=0., .y=1.5, .z=1.5},
            .p2 = (point_t) {.x=1.5, .y=1.5, .z=1.5}
        }
    );

    // Print Results
    printf("********************************************\n");
    printf("HoneyBee Test completed\n");
    printBinary(result);
    printf("************************************************\n");
    return 0;
}
