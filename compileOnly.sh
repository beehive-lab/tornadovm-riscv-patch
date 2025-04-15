VERSION=1.1.1-dev

make BACKEND=opencl   # use BACKEND=spirv for the SPIR-V backend
#make BACKEND=spirv   # use BACKEND=spirv for the SPIR-V backend

mkdir -p bin/sdk/lib
cp tornado-drivers/opencl-jni/src/main/cpp/build/libtornado-opencl.so bin/sdk/lib/
cp tornado-drivers/opencl-jni/target/tornado-drivers-opencl-jni-$VERSION-*.jar bin/sdk/share/java/tornado/tornado-drivers-opencl-jni-$VERSION.jar 
tornado --devices --jvm="-Dtornado.spirv.version=1.0 -Dtornado.spirv.runtimes=opencl"
