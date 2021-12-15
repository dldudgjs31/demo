#!/bin/sh
cd /www/hksipnqdj9xq1twe/public_html/GIT2/demo/
git add .
git checkout -b testbranch
echo $(date) >> test.txt
eval $(ssh-agent -s)
ssh-add ~/.ssh/git

git commit -am "$(date) commit test"

git push --set-upstream origin testbranch
