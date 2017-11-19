#!/bin/sh

echo "Deleting old publication"
rm -rf public
mkdir public

echo "Generating site"
hugo

echo "Updating master branch"
cd public
git add --all
for file in *; do echo $file; done
cd ../
git commit -m "Publishing to master(publish.sh)"
