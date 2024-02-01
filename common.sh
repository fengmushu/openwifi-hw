#!/bin/bash

XILINX_DIR=/opt/Xilinx

if [ -d "$XILINX_DIR/Vivado/" ]; then
    echo "\$XILINX_DIR ${XILINX_DIR} is found!"
else
    echo "\$XILINX_DIR is not correct. Please check!"
    exit 1
fi
