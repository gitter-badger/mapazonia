#!/bin/bash
git checkout master
rm -rf /tmp/mapazonia
cp -rf ../mapazonia /tmp
git checkout gh-pages
cp CNAME /tmp
git rm -rf *
cp /tmp/mapazonia/* .
git add -A
git commit -m "New release - `date`"
git push
