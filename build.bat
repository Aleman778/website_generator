@echo off

rem MSVC Build
call vcvarsall.bat x64

IF NOT EXIST build mkdir build
pushd build

rem Common Compiler Flags
set compiler_flags=-nologo -Gm- -GR- -Zo -EHa -Oi -FC -Zi -GS- -Gs9999999
set compiler_flags=-WX -W4 -wd4201 -wd4100 -wd4189 -wd4505 -wd4127 %compiler_flags%
set compiler_flags=-D_CRT_SECURE_NO_WARNINGS %compiler_flags%

rem Common Linker Flags
set linker_flags=-incremental:no -opt:ref -OUT:generator.exe

rem Compile
cl %compiler_flags% ../demo.c -link %linker_flags%

popd