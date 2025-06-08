#!/bin/bash
EMAIL=ndgnuh@protonmail.com
REPO=debian
GPG=/bin/gpg # CONFLICT WITH NIX COMMANDS?

cd $REPO

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
$GPG --default-key "${EMAIL}" -abs -o - Release 1> Release.gpg
$GPG --default-key "${EMAIL}" --clearsign -o - Release 1> InRelease

cd ..
