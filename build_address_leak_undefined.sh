#!/bin/bash
set -euxo pipefail
if [ -d "./build" ]; then
echo "Deleting previous build"
rm -rf build/
fi
echo "Address, Leak and Undefined Behavior Sanitizer"
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=g++-10 -DENABLE_SANITIZER_ADDRESS=ON \
 -DENABLE_SANITIZER_LEAK=ON -DENABLE_SANITIZER_UNDEFINED_BEHAVIOR=ON 
cmake --build ./build -v