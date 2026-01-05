source source-clang.sh

mkdir -p ~/android/toolchains
cd ~/android/toolchains
rm -rf clang-android16-release
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 --depth=1 -b android16-release clang-android16-release
