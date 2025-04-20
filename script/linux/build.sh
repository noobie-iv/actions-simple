#!/bin/bash

cmake\
 -S src\
 -B build\
 -DCMAKE_INSTALL_PREFIX:PATH=$(pwd)/install\
 -DCPACK_GENERATOR="TGZ"

cmake\
 --build build\
 --target install\
 --parallel

cmake\
 --build build\
 --target package\
 --parallel
