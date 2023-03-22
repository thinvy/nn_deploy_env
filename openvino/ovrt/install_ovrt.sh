# sudo apt install curl

sudo mkdir /opt/intel
# echo -e  "\e[33m  downloading archive ...  \e[0m"
# curl -L https://storage.openvinotoolkit.org/repositories/openvino/packages/2022.3/linux/l_openvino_toolkit_ubuntu20_2022.3.0.9052.9752fafe8eb_x86_64.tgz --output openvino_2022.3.0.tgz  || exit 1
tar -xf openvino_2022.3.0.tgz

echo -e  "\e[33m  set ovrt toolkit to '/opt/intel/openvino_2022.3.0'  \e[0m"
sudo mv l_openvino_toolkit_ubuntu20_2022.3.0.9052.9752fafe8eb_x86_64 /opt/intel/openvino_2022.3.0

echo -e  "\e[33m  install dependencies ...  \e[0m"
sudo -E /opt/intel/openvino_2022.3.0/install_dependencies/install_openvino_dependencies.sh  || exit 1

echo -e  "\e[33m  add ovrt to environment (.bashrc)  \e[0m"
echo "alias ovrt_set='source /opt/intel/openvino_2022.3.0/setupvars.sh'" >> ~/.bashrc 

