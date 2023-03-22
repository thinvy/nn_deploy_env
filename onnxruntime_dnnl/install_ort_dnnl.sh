git clone --recursive https://github.com/Microsoft/onnxruntime.git || exit 1
git reset --hard 1.12.0

cd onnxruntime
python3 -m pip install cmake  || exit 1
which cmake   || exit 1
cmake --version   || exit 1


python3 -m venv ~/venv/onnxruntime_env

source ~/venv/onnxruntime_env/bin/activate

pip3 install -r requirements-dev.txt -i https://pypi.tuna.tsinghua.edu.cn/simple 

# pip3 install -r docs/python/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
# pip3 install numpy==1.23.4 -i https://pypi.tuna.tsinghua.edu.cn/simple

# ./build.sh --config Release --build_shared_lib --parallel --use_dnnl --build_wheel
# ./build.sh --config Release --build_shared_lib --use_dnnl --build_wheel

./build.sh \
	--parallel 8 \
	--use_dnnl \
	--build_shared_lib \
	--enable_pybind \
	--build_wheel \
	--update \
	--build \
	--config Release

cd build/Linux/Release

sudo make install

cd dist

pip3 install -U onnxruntime_dnnl-1.15.0-cp38-cp38-linux_x86_64.whl

echo "alias ortenv_activate='source ~/venv/onnxruntime_env/bin/activate'" >> ~/.bashrc 
