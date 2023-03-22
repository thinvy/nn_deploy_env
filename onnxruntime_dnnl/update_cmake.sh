sudo apt-get install libssl-dev || exit 1

wget https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2.tar.gz || exit 1
tar zxvf cmake-3.25.2.tar.gz


cd cmake-3.25.2/
sh ./bootstrap
make -j8
sudo make install 


