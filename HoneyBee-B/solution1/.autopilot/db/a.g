#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/HoneyBee-B/solution1/.autopilot/db/a.g.bc ${1+"$@"}
