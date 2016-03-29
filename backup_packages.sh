#!/bin/sh

GIT=`which git`
REPO_DIR=/home/taras/SYSTEM_BACKUP/MyArch/

pacman -Qqen > /home/taras/SYSTEM_BACKUP/MyArch/pkglist.txt
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit -m "Test commit"
${GIT} push master
