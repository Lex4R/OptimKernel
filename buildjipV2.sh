ulimit -n 65535
make clean && make mrproper
export ARCH=arm64
make cedric_defconfig
make -j8 0=out CROSS_COMPILE_ARM32=arm-eabi-  CROSS_COMPILE=aarch64-elf- OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump
