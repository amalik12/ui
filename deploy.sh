#! /bin/bash

rev=$(git rev-parse --short HEAD)

git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"

git remote add upstream "https://$GH_TOKEN@github.com/yasp-dota/ui.git"
git add --all
git commit -m "rebuild pages at ${rev}"
git push -f upstream HEAD:gh-pages