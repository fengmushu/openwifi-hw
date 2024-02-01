. ./common.sh

home_dir=$(pwd)

set -x

# git submodule init adi-hdl
# git submodule update adi-hdl
# cd ./adi-hdl/
# git reset --hard 2019_r1
# git reset --hard f61d9707eb0a62533efd6facab59ab2444da94c9
# git reset --hard
# git fetch
# git checkout 2021_r1
# git reset --hard 2021_r1

# # the lib need to be built!
source $XILINX_DIR/Vivado/2021.1/settings64.sh
cd ./adi-hdl/library/
make clean
make

cd $home_dir
