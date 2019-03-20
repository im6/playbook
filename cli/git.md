# git

## common usage

```sh
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/analytic-partners/gpse-login.git
git push -u origin master

git clone xxx
git clone --recursive http://xxx.com/xx.git # clone submodule git repo

git commit -a -m "some msg"
git commit -a -m "some msg" --no-verify // bypass pre-commit
git add -u #只有变化的文件 stage the modified and deleted files
git add --all

git remote -v
git remote set-url origin https://github.com/zj1926/xxxxxxxxxxxxxx.git
git remote show origin # show remote git url

git log --oneline
git reset/revert xx?
git reset <last good SHA> or git reset --hard <last good SHA>  // remove/reset the commit that are not pushed yet.
git reset --hard HEAD~1 # super reset, remove unpushed commits
git diff --name-only

git config --get remote.origin.url
git config --global user.name
git config user.name "Foo"
git config --global user.name "Foo"
git config --global --list
git config -l #list all the information for the .git folder
git rm -r --cached myFolder #删除version但是留下本地
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git

git fetch origin
git branch # show current branch list
git branch <name> # create new branch
git checkout <master|BRANCHE_NAME>
git branch --delete <BRANCHE_NAME>
git checkout --track origin/<BRANCHE_NAME>
git branch -d branch_name
git branch -D branch_name # force
git push origin --delete <the_remote_branch>
git checkout -b <new_branch> # short for create branch and checkout it

git stash push
git stash pop
git stash apply --index <index of stash> # index 0 is latest stash
git stash list
git stash show --index <index of stash>
git stash drop --index <index of stash>

git push origin "your tag name"
```

## frequeny command combination

### remove branch

```sh
git branch -m old_branch new_branch  # Rename branch locally
git push origin :old_branch # Delete the old branch
git push --set-upstream origin new_branch # Push the new branch, set local branch to track the new remote
```

### merge hot fix

```sh
git checkout master
git merge <hotfix_branch> --no-commit --no-ff
git commit -a -m "hot fixed msg"
git branch -d <hotfix_branch> # remove branch
```

## Directory

1. in .git folder, there is "/hooks" folders, and sometime need to remove "pre-commit" in that folder.
1. use `.gitkeep` as place holder

## Fast-Forward

Git simply moves the pointer forward. To phrase that another way, when you try to merge one commit with a commit that can be reached by following the first commit’s history, Git simplifies things by moving the pointer forward because there is __no divergent work__ to merge together — this is called a “fast-forward.”