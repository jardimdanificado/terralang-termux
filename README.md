# terralang-termux 
just run build.sh.
run install.sh if u want to install it, but is completely optional, u can run terra directly from terra/install/bin/

if termux crashes/the process get killed by android during compilation or linking problems, idk what causes so, idk how to fix that, but you can edit the build.sh last line from `make install -j3` to use more or less cores, see what better fits to your device, going to terra/build and running `make install -j3` manually also do the trick sometimes.
