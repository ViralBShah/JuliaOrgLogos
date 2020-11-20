#! /bin/bash

rm -fr logos
mkdir -p logos
GH_USER=`cat github_user`
GH_TOKEN=`cat github_token`
for o in `cat orgnames`; do
    echo $o;
    curl -u $GH_USER:$GH_TOKEN -s --output logos/$o.png `curl -u $GH_USER:$GH_TOKEN -s https://api.github.com/users/$o | grep avatar_url | cut -d" " -f4 | cut -d\" -f2 `;
done
