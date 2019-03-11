#!/bin/bash

htaccess_file="$1"

tag="sblam_blacklist"
blacklist="blacklisthtaccess.txt"

wget -q https://sblam.com/blacklisthtaccess.txt -O "$blacklist"

# add tags at begin and end of file
sed -i '1s/^/# sblam_blacklist\n/' "$blacklist"
echo "# sblam_blacklist" >> "$blacklist"


if grep -Fq "$tag" "$htaccess_file"
then
	# remove old rules
	sed -i "/$tag/,/$tag/d" "$htaccess_file"
fi

cat blacklisthtaccess.txt "$htaccess_file" > htaccess.tmp
mv htaccess.tmp "$htaccess_file"
rm "$blacklist"
