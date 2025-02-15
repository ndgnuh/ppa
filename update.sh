EMAIL=ndgnuh@protonmail.com
REPO=debian

dpkg-scanpackages --multiversion "$REPO" > "$REPO/Packages"
gzip -k -f "$REPO/Packages"
apt-ftparchive release "$REPO" > "$REPO/Release"

gpg --default-key "${EMAIL}" -abs -o - "$REPO/Release" > "$REPO/Release.gpg"
gpg --default-key "${EMAIL}" --clearsign -o - "$REPO/Release" > "$REPO/InRelease"
