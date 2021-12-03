#!/bin/bash
set -euxo pipefail
if [ -d "./build" ]; then
echo "Deleting previous build"
rm -rf build/
fi
echo "Memory Sanitizer"
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=clang++-10 -DENABLE_SANITIZER_MEMORY=ON
cmake --build ./build -v