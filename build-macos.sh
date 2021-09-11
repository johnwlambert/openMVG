
# we will use all available cores to build
NUMPROCS=$(sysctl -n hw.logicalcpu)

brew update
brew install wget python cmake || true
cmake --version

# Install Ceres and Eigen dependencies
brew install ceres-solver
brew install eigen

# Check Eigen version
cat /usr/local/include/eigen3/Eigen/src/Core/util/Macros.h | grep VERSION

# Build OpenMVG from latest develop branch
git clone --recursive https://github.com/openMVG/openMVG.git

mkdir openMVG_Build
cd openMVG_Build
cmake -DCMAKE_BUILD_TYPE=RELEASE . ../openMVG/src/
make -j $NUMPROCS



