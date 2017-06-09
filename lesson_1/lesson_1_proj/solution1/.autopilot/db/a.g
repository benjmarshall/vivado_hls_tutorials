#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
