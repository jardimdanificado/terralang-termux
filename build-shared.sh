#!/bin/bash
pkg update -y
pkg upgrade -y
pkg install git build-essential clang libllvm libllvm-static llvmgold llvm-tools libpolly mlir cmake libedit luajit binutils -y
git clone https://github.com/terralang/terra
cd terra/build
cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install .. -DTERRA_STATIC_LINK_LLVM=OFF -DTERRA_SLIB_INCLUDE_LLVM=OFF -DTERRA_STATIC_LINK_LUAJIT=OFF -DTERRA_SLIB_INCLUDE_LUAJIT=OFF 
make install -j3 # tune this for how many cores you have
