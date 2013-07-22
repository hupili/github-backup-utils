#!/usr/bin/env sh

sed 's/\.git$/.wiki.git/g' conf/repo.list > conf/repo.list.wiki
mv conf/repo.list conf/repo.list.orig
cat conf/repo.list.wiki conf/repo.list.orig > conf/repo.list
