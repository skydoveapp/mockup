git push origin HEAD
git checkout gh-pages
git merge master --no-edit
rm -rf .gitignore
gulp build
git add dist
git commit -a -m "sync master"
git push origin `git subtree split --prefix dist gh-pages`:gh-pages --force
git checkout master
bower install
