#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_001/solution3/.autopilot/db/a.g.bc ${1+"$@"}
