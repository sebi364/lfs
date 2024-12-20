#!/usr/bin/bash -e
#===========================================================
# Preparations
#===========================================================
bash 01_download-sources.sh  1>&2 | tee /logs/01.txt
bash 02_directory-layout.sh  1>&2 | tee /logs/02.txt
bash 03_lfs-user.sh  1>&2 | tee /logs/03.txt
su -c "bash 04_lfs-user-config.sh" lfs  1>&2 | tee /logs/04.txt

#===========================================================
# Compilation
#===========================================================
time su -c "bash 05_compile-binutils.sh" lfs  1>&2 | tee /logs/05.txt
time su -c "bash 06_compile-gcc.sh" lfs  1>&2 | tee /logs/06.txt

#bash 99_sleep.sh