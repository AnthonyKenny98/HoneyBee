#ifndef HONEYBEE
#define HONEYBEE

#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>

// Define Epsilon, the max length of an edge
#define EPSILON 1
// #define EPSILON 2
// #define EPSILON 4

// Define Resolution, the size of each grid
#define RESOLUTION 1

// Define Segments, the number of times an edge has to be divided to determine
// Define data types and dimension of potentially swept volume according to EPSILON
#if EPSILON == 1
    typedef unsigned char Dout_t;
    #define DIM 2
    #define SEGMENTS 10
#elif EPSILON == 2
    typedef unsigned char Dout_t;
    #define DIM 2
    #define SEGMENTS 8
#elif EPSILON == 4
    typedef int64_t Dout_t;
    #define DIM 4
    #define SEGMENTS 16
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

// DELETE THESE
vector_t vector(point_t p1, point_t p2);
vector_t crossProduct(vector_t v1, vector_t v2);
base_t dotProduct(vector_t v1, vector_t v2);
base_t paramT(vector_t norm, base_t plane_d, edge_t e);
point_t pointOfIntersection(base_t T, edge_t edge);
bool pointOnSegment(point_t p, edge_t e);
bool pointOnFace(point_t p, point_t grid);
bool segmentIntersectsFace(edge_t edge, point_t face);
bool segmentIntersectsGrid(edge_t edge, point_t grid);

#endif