echo "Current branch is $1 and is this a pull request=$2"
if [ $1 != "master" -o $2 = 0 ]
then
  echo "Not deploying to gh-pages"
  exit 0
fi

echo "Deploying to gh-pages"
git remote add deployref git@github.com:kotsaris/shippable-deploy.git
git push deployref master:gh-pages
exit 0
