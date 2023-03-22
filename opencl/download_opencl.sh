# Download all *.deb packages
echo -e  "\e[33m  intel-igc-core  \e[0m"
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.11378/intel-igc-core_1.0.11378_amd64.deb  || exit 1
echo -e  "\e[33m  intel-igc-opencl  \e[0m"
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.11378/intel-igc-opencl_1.0.11378_amd64.deb  || exit 1
echo -e  "\e[33m  intel-level-zero-gpu-dbgsym  \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-level-zero-gpu-dbgsym_1.3.23453_amd64.ddeb  || exit 1
echo -e  "\e[33m  intel-level-zero-gpu  \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-level-zero-gpu_1.3.23453_amd64.deb  || exit 1
echo -e  "\e[33m  intel-opencl-icd-dbgsym \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-opencl-icd-dbgsym_22.24.23453_amd64.ddeb  || exit 1
echo -e  "\e[33m  intel-opencl-icd  \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/intel-opencl-icd_22.24.23453_amd64.deb  || exit 1
echo -e  "\e[33m  libigdgmm12  \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/libigdgmm12_22.1.3_amd64.deb  || exit 1
echo -e  "\e[33m  ww24.sum  \e[0m"
wget https://github.com/intel/compute-runtime/releases/download/22.24.23453/ww24.sum  || exit 1
# Verify sha256 sums for packages
echo -e  "\e[33m  checking result ...   \e[0m"
sha256sum -c ww24.sum
echo -e  "\e[33m  sha256 sums for packages :  \e[0m"

echo -e  "\e[33m  12bed76a938863b5a01485d5d8e1bf4568035ccba35d8edb06e5726b6ebf41da intel-igc-core_1.0.11378_amd64.deb  \e[0m"
echo -e  "\e[33m  8b9fdfbc37ef3fd635bfaa6c19829b77e1eef17daa2f6234701f58b1c1fffd2d intel-igc-opencl_1.0.11378_amd64.deb  \e[0m"
echo -e  "\e[33m  c3291ca2308784a5ee0c1448768ecdc0506e433e9d95a9e32017565ba75c0a33 intel-level-zero-gpu-dbgsym_1.3.23453_amd64.ddeb  \e[0m"
echo -e  "\e[33m  8ca11af2405ad8e6d90c2651a1d1a43081505a3bdfa6a098a50a6c540760e70e intel-level-zero-gpu_1.3.23453_amd64.deb  \e[0m"
echo -e  "\e[33m  de11852836568d638138244b8c5136b81300b83c844bec551b7772c6ed34e189 intel-opencl-icd-dbgsym_22.24.23453_amd64.ddeb  \e[0m"
echo -e  "\e[33m  41d17cfd3e6e7e2d20dd29cfda1c136f26c7a200bf0bc65129a8ddb319bf2d4a intel-opencl-icd_22.24.23453_amd64.deb  \e[0m"
echo -e  "\e[33m  7b6378d9a760b5c93e835d862047d7c7841f6b6065e9bf2103b5b4134f2af2b5 libigdgmm12_22.1.3_amd64.deb  \e[0m"









