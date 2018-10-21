make clean
cd enet
make clean
make distclean
rm -rf autom4te.cache
cd ../lua
make clean
rm ../lib/liblua.a
cd ../lanes
make clean
rm -r src/lua
cd ..
rm -rf linux_release
