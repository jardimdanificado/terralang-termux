pkg update -y
pkg upgrade -y
pkg install git build-essential clang libllvm libllvm-static llvmgold llvm-tools libpolly mlir cmake libedit luajit binutils -y
git clone https://github.com/terralang/terra
cd terra/build
cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install ..
make install -j4 # tune this for how many cores you have
