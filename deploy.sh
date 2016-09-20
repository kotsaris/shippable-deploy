echo "Current branch is $1 and is this a pull request=$2"
echo "Instructed to deploy to $3 and only from branch $4 to branch $5"

if [ $1 == $4 -a $2 == "false" ]
then
  echo "Deploying to $5"
  git remote add deployref $3
  git push deployref $4:$5
  exit 0
fi

echo "Not deploying to $5"
exit 0
