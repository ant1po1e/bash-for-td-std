echo -n "Input repository's folder: "
read folder

cd $folder

git status

echo "Add file/folder to push. EX: Assets/ or script.cs (Press ENTER if theres no more files):"
read -e -p "File/folder name: " file

while [ -n "$file" ]; do
    git add $file
    read -e -p "File/folder name: " file
done

echo -n "Commit message: "
read commit

git commit -m "$commit"

echo -n "Branch name to push: "
read branch

git push origin $branch