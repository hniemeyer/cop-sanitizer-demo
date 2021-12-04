#!/bin/bash
set -euxo pipefail
if [ -d "./build" ]; then
echo "Deleting previous build"
rm -rf build/
fi
echo "Normal build"
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=g++-10
cmake --build ./build -v