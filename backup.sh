#!/usr/bin/env sh

. ./conf/conf.sh

mkdir -p $dir_repo

for r in `cat conf/repo.list`
do
	sub_dir=`echo $r | grep -o "/[^/]*.git$" | cut -c2- | sed 's/.git$//'`
	clone_dir="$dir_repo/$sub_dir"
	# If the dir already exists, the command fails and our dir remains unchanged.
	git clone $r $clone_dir
	cd $clone_dir
	# Fetch all remotes
	# All data is now in our local backup. 
	# You just need to set up local tracking branches later in order to work on them. 
	# See, 
	#    * http://stackoverflow.com/questions/67699/how-do-i-clone-all-remote-branches-with-git
	git fetch --all
	git pull --all
	cd -
done

