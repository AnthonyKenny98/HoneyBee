#ifndef HONEYBEE
#define HONEYBEE

#include <stdlib.h>
#include <stdbool.h>

// Define Epsilon, the max length of an edge
// #define EPSILON 1
//#define EPSILON 2
 #define EPSILON 4

// Define Resolution, the size of each grid
#define RESOLUTION 1

// Define Segments, the number of times an edge has to be divided to determine
// Define data types and dimension of potentially swept volume according to EPSILON
#if EPSILON == 1
    typedef unsigned char Dout_t;
    #define DIM 2
#elif EPSILON == 2
    typedef unsigned char Dout_t;
    #define DIM 2
#elif EPSILON == 4
    typedef int64_t Dout_t;
    #define DIM 4
#endif

// Minimum for any type
#define min(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a < _b ? _a : _b; })


// Maximum for any type
#define max(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a > _b ? _a : _b; })

typedef float base_t;

// Point
typedef struct point {
    base_t x;
    base_t y;
    base_t z;
} point_t;

typedef point_t vector_t;

typedef struct edge {
    point_t p1 ;
    point_t p2;
} edge_t;

Dout_t honeybee(edge_t edge);

#endif
