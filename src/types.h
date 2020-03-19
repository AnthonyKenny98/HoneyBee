#ifndef TYPES
#define TYPES

#if EPSILON <= 2
    typedef unsigned char Dout_t;
    #define DIM 2
#elif EPSILON <=4
    typedef int64_t Dout_t;
    #define DIM 4
#endif

#endif