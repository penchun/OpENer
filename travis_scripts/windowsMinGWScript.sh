#!/bin/bash
echo 'Windows MinGW main Script started...'
# Exit with nonzero exit code if anything fails
set -e

cd $TRAVIS_BUILD_DIR/source
cmake -G "MinGW Makefiles" -DOpENer_PLATFORM:STRING="MINGW" -DCMAKE_BUILD_TYPE:STRING="Debug" -DOpENer_64_BIT_DATA_TYPES_ENABLED:BOOL=ON -DCMAKE_SH="CMAKE_SH-NOTFOUND" .
mingw32-make