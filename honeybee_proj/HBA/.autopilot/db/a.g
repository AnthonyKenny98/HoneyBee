#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Thesis/HoneyBee/honeybee_proj/HBA/.autopilot/db/a.g.bc ${1+"$@"}
