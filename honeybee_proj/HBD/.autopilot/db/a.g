#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_proj/HBD/.autopilot/db/a.g.bc ${1+"$@"}
