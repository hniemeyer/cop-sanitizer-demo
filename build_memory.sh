#!/bin/bash
echo "Memory Sanitizer"
cmake -S . -B ./build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=g++-10 -DENABLE_SANITIZER_MEMORY=ON
cmake --build ./build -v
./build/src/invalid-index
sleep 10
rm -rf build/
echo "--------------------------------------------"