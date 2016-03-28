git push origin HEAD
git checkout gh-pages
git merge master --no-edit
gulp build
git add .
git commit -a -m "sync master"
git subtree push --prefix dist origin gh-pages
git checkout master
bower install
