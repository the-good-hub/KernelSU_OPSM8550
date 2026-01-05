#!/bin/bash
CLANG_ROOT=~/android/toolchains/clang-android16-release/clang-r547379/bin
export PATH="${CLANG_ROOT}:$PATH"
export LLVM=1
export LLVM_IAS=1
export CC="${CLANG_ROOT}/clang"
export HOSTCC="${CLANG_ROOT}/clang"
export HOSTCXX="${CLANG_ROOT}/clang++"
export LD="${CLANG_ROOT}/ld.lld"
export AR="${CLANG_ROOT}/llvm-ar"
export NM="${CLANG_ROOT}/llvm-nm"
export OBJCOPY="${CLANG_ROOT}/llvm-objcopy"
export OBJDUMP="${CLANG_ROOT}/llvm-objdump"
export STRIP="${CLANG_ROOT}/llvm-strip"

