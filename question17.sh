#!/bin/bash



cd git-practice-03


git checkout main


git checkout -b branch1
git checkout -b branch2
git checkout main


mkdir -p dir1/dir2
touch dir1/dir2/foo
mkdir -p dir3
touch dir3/bar
touch dir3/bar_copy
touch LICENSE README.md

git add .
git commit -m "Configured main branch"
git push origin main


git checkout branch1
rm -rf dir1/dir2  # 删除 dir2 目录
mkdir -p dir1
touch dir1/foo
mkdir -p dir3
touch dir3/bar
touch LICENSE README.md newfile1

git add .
git commit -m "Configured branch1"
git push origin branch1


git checkout branch2
mkdir -p dir1/dir2
touch dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
touch LICENSE README.md

git add .
git commit -m "Configured branch2"
git push origin branch2


git checkout main

