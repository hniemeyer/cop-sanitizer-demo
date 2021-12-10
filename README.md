# Demo of different sanitizers and valgrind

## Prerequisites

This demos are build for linux and use the gcc and clang compilers. All tools
used here can be installed via

```
sudo apt update
sudo apt install g++-10 clang cmake valgrind
```

if you are running Ubuntu. 

## Usage (Sanitizers)

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

## Usage (Valgrind)

Build the executables without sanitizer support by invoking 

```
bash build_normal.sh 
```

Valgrind brings support for checking memory problems and thread problems via different tools.
Memcheck and leak check can be run via (memcheck is the default tool and does not need to be specified):

```
valgrind --leak-check=full ./build/src/leak #runs valgrind on the executable leak in the build/src folder 
```

There are two different tools within valgrind for checking thread behavior

```
valgrind --tool=drd ./build/src/thread-globalvar #runs valgrind on the executable thread-globalvar in the build/src folder 
valgrind --tool=helgrind ./build/src/thread-globalvar
```
