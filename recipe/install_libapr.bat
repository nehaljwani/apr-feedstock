pushd apr

mkdir build
cd build

where ninja
ninja --version

cmake ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release ^
    %SRC_DIR%\apr
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
