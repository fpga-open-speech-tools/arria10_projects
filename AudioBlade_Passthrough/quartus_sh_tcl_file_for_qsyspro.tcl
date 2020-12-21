get_global_assignment -name FAMILY
set device [get_global_assignment -name DEVICE]; if {$device eq ""} { set family [get_global_assignment -name FAMILY]; set device [get_auto_default_part_of $family] }; return $device;
