python3 -m venv ~/venv/openvino_env
source ~/venv/openvino_env/bin/activate
python3 -m pip install --upgrade pip 

pip3 install -r /opt/intel/openvino_2022.3.0/tools/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install -r /opt/intel/openvino_2022.3.0/tools/requirements_onnx.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install -r /opt/intel/openvino_2022.3.0/tools/requirements_pytorch.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

pip3 install openvino-dev[pytorch,onnx]==2022.3.0

echo "alias ovenv_activate='source ~/venv/openvino_env/bin/activate'" >> ~/.bashrc 
