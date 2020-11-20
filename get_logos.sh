#! /bin/bash

rm -fr logos
mkdir -p logos
GH_USER=`cat github_user`
GH_TOKEN=`cat github_token`
for o in `cat orgnames`; do
    echo "Downloading $o.png";
    # During CI runs, use a GitHub App token rather than a Personal Access Token
    if [[ $CI = "true" ]]; then
        curl -s -H "Authorization: Bearer $GITHUB_TOKEN" -L -o logos/$o.png https://github.com/$o.png
    else
        curl -s -u $GH_USER:$GH_TOKEN -L -o logos/$o.png https://github.com/$o.png
    fi
done
