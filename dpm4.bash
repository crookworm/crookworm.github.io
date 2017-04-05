#!/bin/bash
PWR=( 4 4 4 4 4 4 )
for I in `seq 0 5`; do
  echo "manual" > /sys/class/drm/card$I/device/power_dpm_force_performance_level
  echo ${PWR[$I]} > /sys/class/drm/card$I/device/pp_dpm_sclk
done
