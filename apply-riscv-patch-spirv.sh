#!/usr/bin/env bash
VERSION=1.1.2-dev
pushd .
cd tornado-drivers/opencl-jni/src/main/cpp/
mkdir -p build/
cd build/
rm -Rf *
cmake ..
make
popd
patch -p 1 < tornadovm-riscv-patch/patch.diff
./bin/tornadovm-installer --jdk liberica-jdk-21 --backend=spirv
source setvars.sh
mkdir -p bin/sdk/lib
cp tornado-drivers/opencl-jni/src/main/cpp/build/libtornado-opencl.so bin/sdk/lib/
cp tornado-drivers/opencl-jni/target/tornado-drivers-opencl-jni-$VERSION*.jar bin/sdk/share/java/tornado/tornado-drivers-opencl-jni-$VERSION.jar 
tornado --devices --jvm="-Dtornado.spirv.version=1.0 -Dtornado.spirv.runtimes=opencl" 
