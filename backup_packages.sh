#!/bin/sh

GIT=`which git`
REPO_DIR=/home/taras/SYSTEM_BACKUP/MyArch/
COMMIT=$(date)

pacman -Qqen > /home/taras/SYSTEM_BACKUP/MyArch/pkglist.txt
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit -m "Packages list backup for: ${COMMIT}"
${GIT} push 
