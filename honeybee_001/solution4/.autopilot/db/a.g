#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_001/solution4/.autopilot/db/a.g.bc ${1+"$@"}
