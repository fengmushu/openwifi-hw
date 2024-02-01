#!/bin/bash

. ./common.sh

[ -z "$2" ] && {
    BOARD_NAME="zed_fmcs2"
} || {
    BOARD_NAME=$1
}

# [ "$BOARD_NAME" != "zc706_fmcs2" ] && [ "$BOARD_NAME" != "zc702_fmcs2" ] && [ "$BOARD_NAME" != "zed_fmcs2" ] && [ "$BOARD_NAME" != "adrv9361z7035" ] && [ "$BOARD_NAME" != "adrv9361z7035_fmc" ] && [ "$BOARD_NAME" != "adrv9364z7020" ] && [ "$BOARD_NAME" != "zcu102_fmcs2" ] && [ "$BOARD_NAME" != "zcu102_9371" ]; then

case $BOARD_NAME in
    "zcu102_fmcs2")
    ADI_PROJECT_DIR=./adi-hdl/projects/fmcomms2/zcu102/
    ;;
    "zcu102_9371")
    ADI_PROJECT_DIR=./adi-hdl/projects/fmcomms2/zcu102/
    ;;
    "zc706_fmcs2")
    ADI_PROJECT_DIR=./adi-hdl/projects/fmcomms2/zc706/
    ;;
    "zc702_fmcs2")
    ADI_PROJECT_DIR=./adi-hdl/projects/fmcomms2/zc702/
    ;;
    "zed_fmcs2")
    ADI_PROJECT_DIR=./adi-hdl/projects/fmcomms2/zed/
    ;;
    "adrv9361z7035")
    ADI_PROJECT_DIR=./adi-hdl/projects/adrv9361z7035/ccbob_lvds/
    ;;
    "adrv9361z7035_fmc")
    ADI_PROJECT_DIR=./adi-hdl/projects/adrv9361z7035/ccfmc_lvds/
    ;;
    "adrv9364z7020"|\
    "neptunesdr"|\
    "antsdr"|\
    "antsdr_e200"|\
    "e310v2"|\
    "sdrpi")
    ADI_PROJECT_DIR=./adi-hdl/projects/adrv9364z7020/ccbob_lvds/
    ;;
    *)
    echo "\$BOARD_NAME is not correct. Please check!"
    exit 1
    ;;
esac

echo $ADI_PROJECT_DIR

home_dir=$(pwd)

set -x

source $XILINX_DIR/Vivado/2021.1/settings64.sh

cd $ADI_PROJECT_DIR
make clean
make

cd $home_dir
