#!/usr/bin/env sh

. ./conf/conf.sh

url="https://api.github.com/users/${username}/repos?type=owner"
curl -s "$url" | grep -Eo '"git_url": "[^"]+"' | awk '{print $2}' | tr -d '"' > conf/repo.list
