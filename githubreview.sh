echo -n "Input repository's folder: "
read folder

cd $folder

git branch

echo -n "The name of branch that you want to review: "
read branch

git checkout $branch

