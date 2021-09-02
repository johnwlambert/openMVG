
NUMPROCS=$(sysctl -n hw.logicalcpu)

brew update

brew install ceres-solver
brew install eigen

git clone --recursive https://github.com/openMVG/openMVG.git

mkdir openMVG_Build
cd openMVG_Build
cmake -DCMAKE_BUILD_TYPE=RELEASE . ../openMVG/src/
make -j $NUMPROCS



