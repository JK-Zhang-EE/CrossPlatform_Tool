OUTPUT="build"
IOS_EXAMPLE_ROOT="./test/ios/test/test/lib"
XCODE_ROOT="/Applications/Xcode.app/Contents/Developer"

rm -rf $OUTPUT
mkdir $OUTPUT

cmake -G Xcode -DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake -DPLATFORM=OS64 -S  . -B $OUTPUT
cmake --build $OUTPUT --config Release

cp -r -f $OUTPUT/lib/Release/* $IOS_EXAMPLE_ROOT
