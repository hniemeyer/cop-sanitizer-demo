#!/bin/bash
set -euxo pipefail
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=g++-10 -DENABLE_SANITIZER_ADDRESS=ON
cmake --build ./build -v
./build/src/invalid-index