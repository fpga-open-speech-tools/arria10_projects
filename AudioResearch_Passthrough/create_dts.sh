#!/bin/sh
sopc2dts --input soc_system.sopcinfo --output soc_system.dts --board hps_a10_common_board_info.xml --board hps_a10_devkit_board_info.xml --board ghrd_10as066h4f34e3sg_board_info.xml --bridge-removal all --clocks
