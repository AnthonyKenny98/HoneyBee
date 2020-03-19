#ifndef HONEYBEE
#define HONEYBEE

// #define EPSILON 1
// #define EPSILON 2
#define EPSILON 4

#define RESOLUTION 1

#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>

#include "types.h"

typedef struct point {
    float x;
    float y;
    float z;
} point_t;

typedef struct edge {
    point_t p1 ;
    point_t p2;
} edge_t;

Dout_t honeybee(edge_t edge);

#endif
