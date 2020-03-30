#Solutions

## HoneyBee-A
Calling each Line Intersects plane from within the honeybee() function. 
max latency = 6.66 us and no overlap between checking each plane.

## HoneyBee-B
Abstract the check one axis function out.
Pass it a "num" argument to determine which logic to follow. Ugly, but now instantiates seperately and runs all three axes parallel, which is fast.
Max latency = 2.26 us

## HoneyBee-D
Add HLS PRAGMA function_instantiate variable=num to minimise logic depending on inputs
Marginally faster but significantly smaller

## HoneyBee-E
Add HLS UNROLL Pragma to loop in checkAxes() but this failed to result in much of a speedup because the loop writes to the collision variable. Going to figure out a way around this now.

## HoneyBee-F
HLS UNROLL and made collsions a Dout_t array and then iterate over it at the end. negligible if any speedup

## HoneyBee-G
HLS UNROLL and array partition collisions array. Nothing

## HoneyBee-H
Fast! 0.53us by pipelining but its getting pretty big. It is, however, finally executing the 4 iterations in parallel, so that's good? Not sure why the pipline pragma does this
