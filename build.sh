mkdir -p ~/android/aston_kernel
cd ~/android/aston_kernel

rm -rf sm8550
rm -rf sm8550-modules


git clone https://github.com/OnePlus12R-development/android_kernel_oneplus_sm8550.git --depth=1  -b sixteen-qpr1 sm8550

git clone https://github.com/OnePlus12R-development/android_kernel_oneplus_sm8550-modules.git --depth=1  -b sixteen-qpr1 sm8550-modules

cd sm8550

curl -LSs "https://raw.githubusercontent.com/KOWX712/KernelSU/main/kernel/setup.sh" | bash -s master

cd KernelSU
git add .
git commit -m "just a commit"
cd ..
git add .
git commit -m "just a commit"

make ARCH=arm64 O=out gki_defconfig vendor/kalama_GKI.config vendor/oplus/kalama_GKI.config vendor/debugfs.config

make -j$(nproc) ARCH=arm64 O=out
