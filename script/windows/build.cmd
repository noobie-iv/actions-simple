CMAKE^
 -S src^
 -B build^
 -DCMAKE_CONFIGURATION_TYPES:STRING=Release^
 -DCMAKE_INSTALL_PREFIX:PATH=%CD%\install^
 -DCPACK_GENERATOR:STRING="ZIP"

CMAKE^
 --build .\build^
 --config Release^
 --target install^
 --parallel

CMAKE^
 --build .\build^
 --config Release^
 --target PACKAGE^
 --parallel
