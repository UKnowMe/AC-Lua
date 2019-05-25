NumProc=$(($(getconf _NPROCESSORS_ONLN)+1))
./build-clean.sh
cd lanes/src
ln -sf ../../lua/src lua
cd ../../enet
./configure
make -j $NumProc
cd ../lua
make linux install
cp src/liblua.a ../lib/
cd ..
make linux
