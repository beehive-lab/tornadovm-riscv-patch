## TornadoVM Installer for RISC-V 

How to build:

```bash
git clone https://github.com/beehive-lab/TornadoVM.git tornadovm
cd tornadovm
git clone https://github.com/beehive-lab/tornadovm-riscv-patch.git

## activate python env
source <path/to/python/venv>/bin/activate

## Alternatively, create a new environment
python -m venv /path/to/your/venv 
source /path/to/your/venv/bin/activate

## Build for OpenCL only
bash tornadovm-riscv-patch/apply-riscv-patch-opencl.sh 

## Build for OpenCL and SPIR-V 
bash tornadovm-riscv-patch/apply-riscv-patch-spirv.sh 
```


## Platforms supported

These scripts have been tested on Bianbu OS 2.1 for Banana Pi BPI-F3 and Sipeed LicheePi 3A. 

