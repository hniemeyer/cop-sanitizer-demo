#!/bin/bash
set -euxo pipefail
if [ -d "./build" ]; then
echo "Deleting previous build"
rm -rf build/
fi
echo "Thread Sanitizer"
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=g++-10 -DENABLE_SANITIZER_THREAD=ON
cmake --build ./build -v