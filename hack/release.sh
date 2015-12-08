#!/bin/sh

set -e

git status

mkdir -p tmp
cp hack/install.sh tmp/install.sh
git checkout gh-pages
mv tmp/install.sh install.sh
git add install.sh
git commit -m "Installed from git"
rm -rf tmp

echo
echo "Please verify, then if satisfied do the following"
echo "$ push -u origin gh-pages"

# EOF
