OUTPUT="build"
IOS_EXAMPLE_ROOT="./test/ios/test/test/lib"

rm -rf $OUTPUT
mkdir $OUTPUT

xcode-select --install # Install Command Line Tools if you haven't already.
sudo xcode-select --switch /Library/Developer/CommandLineTools # Enable command line tools
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

cmake -G Xcode -DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake -DPLATFORM=OS64 -S . -B $OUTPUT
cmake --build $OUTPUT --config Release

cp -r -f $OUTPUT/lib/Release/* $IOS_EXAMPLE_ROOT