#ifndef HONEYBEE
#define HONEYBEE

#define XDIM 8
#define YDIM 8
#define ZDIM 8
#define RESOLUTION 1
#define NUMEDGES 100

#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <stdio.h>
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

int honeybee(edge_t edge);

#endif
