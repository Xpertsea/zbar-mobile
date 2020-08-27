folder="Distribution"
project_name="libzbar"
lib_name="libzbar"
name_simulator=$lib_name"_simulator"
name_device=$lib_name"_device"

xcodebuild OTHER_CFLAGS="-fembed-bitcode" -target $project_name build
xcodebuild OTHER_CFLAGS="-fembed-bitcode" -sdk iphonesimulator -target $project_name build
rm -r build/Production-SDK
cp -r build/$folder-iphoneos build/Production-SDK
cp build/$folder-iphonesimulator/$lib_name.a build/Production-SDK/$name_simulator.a
mv build/Production-SDK/$lib_name.a build/Production-SDK/$name_device.a
cd build/Production-SDK/
lipo -create $name_simulator.a $name_device.a -output $lib_name.a
rm $name_device.a
rm $name_simulator.a
file $lib_name.a
open .