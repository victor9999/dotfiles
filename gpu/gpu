#!/bin/sh
echo 'manual'    > /sys/class/drm/card1/device/power_dpm_force_performance_level
echo '1'         > /sys/class/drm/card1/device/pp_power_profile_mode
echo '260000000' > /sys/class/drm/card1/device/hwmon/hwmon3/power1_cap
echo 's 1 2700'  > /sys/class/drm/card1/device/pp_od_clk_voltage
echo 'vo -70'    > /sys/class/drm/card1/device/pp_od_clk_voltage
echo 'c'         > /sys/class/drm/card1/device/pp_od_clk_voltage
