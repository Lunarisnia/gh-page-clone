#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git config user.email "r.arswendo.r@gmail.com"
git config user.name "Luna"
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:lunarisnia/lunarisnia.github.io.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -