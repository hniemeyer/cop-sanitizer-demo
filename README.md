# Demo of different sanitizers and valgrind

## Prerequisites

This demos are build for linux and use the gcc and clang compilers. All tools
used here can be installed via

```
sudo apt update
sudo apt install g++-10 clang cmake valgrind
```

if you are running Ubuntu. 

## Usage

Each build_*.sh script builds all available *.cpp in the src directory into an independent
executable which is called exactly like its corresponding *.cpp file (e.g. leak.cpp will
be compiled into an executable called leak which will be located in build/src). Invoking a
build script will delete the previous build folder.

```
bash build_normal.sh #builds normal executables without sanitizers (useful for valgrind or checking normal behavior)
bash build_memory.sh #builds with memory sanitizer
bash build_thread.sh #builds with thread sanitizer
bash build_address_leak_undefined.sh #builds with address, leak and undefined behavior sanitizer
```
 

