#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_001/solution2/.autopilot/db/a.g.bc ${1+"$@"}