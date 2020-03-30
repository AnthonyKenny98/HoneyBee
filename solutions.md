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

