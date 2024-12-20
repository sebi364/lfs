#!/usr/bin/bash -e
echo "================================================================"
echo "05_compile-binutils.sh"
echo "================================================================"

# extract & create build dir
cd $SOURCES
tar -xf binutils-2.43.1.tar.xz
mkdir -v binutils-2.43.1/build
cd binutils-2.43.1/build

# configure
../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu

# compile package
make
# install package
make install