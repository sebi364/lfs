#!/usr/bin/bash -e
echo "================================================================"
echo "01_download-sources.sh"
echo "================================================================"

mkdir -v $SOURCES
chmod -v a+wt $SOURCES

# download tarbal list and md5sums
wget -nc https://www.linuxfromscratch.org/lfs/downloads/stable/wget-list --directory-prefix=$SOURCES
wget -nc https://www.linuxfromscratch.org/lfs/downloads/stable/md5sums --directory-prefix=$SOURCES

# download tarballs
wget --input-file=$SOURCES/wget-list -nc --continue --directory-prefix=$SOURCES

# validate tarballs
pushd $SOURCES
  md5sum -c $SOURCES/md5sums
popd