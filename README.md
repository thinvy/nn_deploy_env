# NN部署环境配置

## opencl驱动

intel核显推理需要要安装核显的opencl驱动.

`./opencl/download_opencl.sh`

如果下载超时可以手动浏览器下载所有的deb包,检查文件完整后可以进行安装:

`./opencl/install_opencl.sh`

查看核显loading: `sudo intel_gpu_top`

查看cpu loading: `htop`

## openvino

### openvino develop toolkit

用于openvino模型转换和优化,脚本使用python env配置虚拟环境.

`./openvino/ovdt/install_ovdt.sh`

激活环境命令: `ovenv_activate` 或: `source ~/venv/openvino_env/bin/activate`

### openvino runtime

openvino cpp推理器.

`./openvino/ovrt/install_ovrt.sh`

如果工程到了openvino runtime库,在cmake之前需要执行以下命令(否则会报错找不到库):

`ovrt_set` 或 `source /opt/intel/openvino_2022.3.0/setupvars.sh`

## onnxruntime with dnnl

主要希望使用到dnnl库中的avx512 cpu优化

首先需要升级cmake到3.25.0版本: `./onnxruntime_dnnl/update_cmake.sh`

检查cmake版本是否切换,如果切换到了3.25.0,可以开始安装onnxruntime_dnnl: `./onnxruntime_dnnl/install_ort_dnnl.sh`