ConcurProc=$(CONCURRENCY_LEVEL=$(getconf _NPROCESSORS_ONLN))
NumProc=$(($(getconf _NPROCESSORS_ONLN)+1))
./build-clean.sh
cd lanes/src
ln -sf ../../lua/src lua
cd ../../enet
./configure
$ConcurProc make -j $NumProc
cd ../lua
make linux install
cp src/liblua.a ../lib/
cd ..
$ConcurProc make -j $NumProc linux
