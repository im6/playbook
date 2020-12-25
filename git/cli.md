# Git Flow

## User Initialization

```sh
git config --global user.name "<your username>"
git config --global user.email "<your email>"
git config --global user.name
git config --global user.email

git config --global core.eol lf # will be ignored if autocrlf is truthy
git config --global core.autocrlf false # use Unix eof
```

## Init

```sh
git init
git add README.md
git commit -m "first commit"
git remote add origin <git_remote_url>
git push -u origin master
```

## Clone

```sh
git clone xxx
git clone https://github.com/user/userApp.git <newFolderName>
git clone --recursive http://xxx.com/xx.git # clone submodule git repo

```

## add

```sh
git add -A # stages all changes
git add . # stages new files and modifications, without deletions
git add -u # stages modifications and deletions, without new files
```

## Commit

```sh
git commit -a # automatic stage all the pending changed files
git commit -m "some msg"
git commit -a -m "some msg" --no-verify // bypass pre-commit
git add -u #只有变化的文件 stage the modified and deleted files
git add --all
```

## Reset

```sh
git log --oneline
git reset/revert xx?
git reset <last good SHA> or git reset --hard <last good SHA>  // remove/reset the commit that are not pushed yet.
git reset --hard HEAD~1 # super reset, remove unpushed commits
git reset --soft HEAD~1 # revert commit, but keep the unpushed changes in local
git diff --name-only
```

## tag

tag should be push only after all the commits have been pushed to remote.
[ref](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag)

```sh
git tag # show tag list'
git tag v1.2.3 # create lightweight tag locally
git tag -a v1.4 -m "description text" # create annotated tag locally
git tag -d v1.4 # delete local tag
git push origin v1.4 # push local new tag to remote
```

## Config

```sh
git config --get remote.origin.url
git config --global user.name
git config user.name "Foo"
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
```

## Stash

```sh
git stash # equal to push
git stash push
git stash pop
git stash apply --index <index of stash> # index 0 is latest stash
git stash list
git stash show --index <index of stash>
git stash drop --index <index of stash>
git stash cleaer # delete all the stash change

git push origin "your tag name"
```

## frequeny command combination

### rename branch

```sh
git branch -m old_branch new_branch  # Rename branch locally
git push origin :old_branch # Delete the old branch
git push --set-upstream origin new_branch # Push the new branch, set local branch to track the new remote
```

### merge

```sh
git checkout <master>
git pull
EITHER git merge <my-feature-branch> --no-commit --no-ff
OR git merge <my-feature-branch> --squash
git commit -m "hot fixed msg"
git push
git branch -d <my-feature-branch> # remove branch
git merge --abort # abort the merge process
```

### rebase

rebase feature into master
[reference](https://blog.algolia.com/master-git-rebase/)

```sh
git checkout <master>
git pull origin <master> # git pull make sure latest master
git checkout <my-feature-branch>
git checkout -b <my-feature-branch-rebase>
git rebase <master>

# repeat start
# resolve conflict if any
git add .
git rebase --continue
# repeat end

git push origin HEAD
```

### set remote url

```sh
git remote -v
git remote set-url origin https://github.com/xxx/xxxx.git
git remote show origin # show remote git url
```

## Directory

1. in .git folder, there is "/hooks" folders, and sometime need to remove "pre-commit" in that folder.
1. use `.gitkeep` as place holder

## Fast-Forward

Git simply moves the pointer forward. To phrase that another way, when you try to merge one commit with a commit that can be reached by following the first commit’s history, Git simplifies things by moving the pointer forward because there is **no divergent work** to merge together — this is called a “fast-forward.”
