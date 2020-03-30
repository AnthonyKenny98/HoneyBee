#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_proj/HBH/.autopilot/db/a.g.bc ${1+"$@"}
