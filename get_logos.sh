#! /bin/bash

rm -fr logos
mkdir -p logos
GH_USER=`cat github_user`
GH_TOKEN=`cat github_token`
for o in `cat orgnames`; do
    echo "Downloading $o.png";
    curl -s -u $GH_USER:$GH_TOKEN -L -o logos/$o.png https://github.com/$o.png
done
