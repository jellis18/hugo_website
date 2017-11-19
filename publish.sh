#!/bin/sh

echo "Deleting old publication"
rm -rf public
mkdir public

echo "Generating site"
hugo

echo "Updating master branch"
cd public
git add --all
cd ../
for file in public/*; do echo $file; done
git commit -m "Publishing to master(publish.sh)"
