#ifndef HONEYBEE
#define HONEYBEE

#define DIM 2
#define RESOLUTION 1

#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>

typedef struct point {
    float x;
    float y;
    float z;
} point_t;

typedef struct edge {
    point_t p1 ;
    point_t p2;
} edge_t;

char honeybee(edge_t edge);

#endif
