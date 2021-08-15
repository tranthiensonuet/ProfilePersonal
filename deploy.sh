#!/usr/bin/env sh

set -e

npm run build

cd dist

git init

git branch -m deploy-page

git add -A

git commit -m "new deploy"

git push -f git@github.com:tranthiensonuet/ProfilePersonal.git deploy-page

cd -