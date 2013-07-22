#!/usr/bin/env sh

echo "[start]" `date` >> log
./update-repo-list.sh 2>&1 | tee -a log &> /dev/null
./add-github-wiki.sh 2>&1 | tee -a log &> /dev/null
./backup.sh 2>&1 | tee -a log &> /dev/null
echo "[end]" `date` >> log

exit 0
