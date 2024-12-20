#!/usr/bin/bash -e
#===========================================================
# Preparations
#===========================================================
bash 01_download-sources.sh
bash 02_directory-layout.sh
bash 03_lfs-user.sh
su -c "bash 04_lfs-user-config.sh" lfs
su -c "bash 06_compile-gcc.sh" lfs

#===========================================================
# Compilation
#===========================================================
time su -c "bash 05_compile-binutils.sh" lfs
time su -c "bash 06_compile-gcc.sh" lfs

bash 99_sleep.sh