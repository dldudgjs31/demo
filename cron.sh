#!/bin/sh
ssh-add ~/.ssh/git
git checkout -b testbranch
echo $(date) >> test.txt
eval $(ssh-agent -s)
#ssh-add ~/.ssh/git

git commit -am "$(date) commit test"

git push --set-upstream origin testbranch
