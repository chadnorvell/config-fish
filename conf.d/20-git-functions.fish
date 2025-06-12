function gc --wraps='git commit $argv' --description 'alias gc=git commit $argv'
  git commit $argv
end

function gcm --wraps='git commit -m $argv' --description 'alias gcm=git commit -m $argv'
  git commit -m $argv
end

function gca --wraps='git commit --amend $argv' --description 'alias gca=git commit --amend $argv'
  git commit --amend $argv
end

function gca! --wraps='git commit --amend --no-edit' --description 'alias gca!=git commit --amend --no-edit'
  git commit --amend --no-edit $argv
end

function grev! --wraps='git commit --amend --no-edit && git push --force' --description 'alias grev!=git commit --amend --no-edit && git push --force'
  git commit --amend --no-edit && git push --force
end

function ga --wraps='git add -A $argv' --description 'alias ga=git add -A $argv'
  git add -A $argv
end

function gac --wraps='git add -A && git commit' --description 'alias gac=git add -A && git commit'
  git add -A && git commit $argv
end

function gaca --wraps='git add -A && git commit --amend' --description 'alias gaca=git add -A && git commit --amend'
  git add -A && git commit --amend
end

function gaca! --wraps='git add -A && git commit --amend --no-edit' --description 'alias gaca!=git add -A && git commit --amend --no-edit'
  git add -A && git commit --amend --no-edit
end

function garev! --wraps='git add -A && git commit --amend --no-edit && git push --force' --description 'alias garev=git add -A && git commit --amend --no-edit && git push --force'
  git add -A && git commit --amend --no-edit && git push --force
end

function gb --wraps='git branch $argv' --description 'alias gb=git branch $argv'
  git branch $argv
end

function gh --wraps='git checkout $argv' --description 'alias gh=git checkout $argv'
  git checkout $argv
end

function ghb --wraps='git checkout -b $argv' --description 'alias ghb=git checkout -b $argv'
  git checkout -b $argv
end

function gd --wraps='git diff' --description 'alias gd git diff'
  git diff $argv
end


function gds --wraps='git diff --staged' --description 'alias gds git diff --staged'
  git diff --staged $argv
end

function gg --wraps='git clone $argv' --description 'alias gg=git clone $argv'
  git clone $argv
end

function ggg --wraps='git clone $argv && cd $(echo $argv | grep -o \'[^/]*$\' | cut -d \'.\' -f 1)' --description='alias ggg=git clone $argv && cd $(echo $argv | grep -o \'[^/]*$\' | cut -d \'.\' -f 1)'
  git clone $argv && cd $(echo $argv | grep -o '[^/]*$' | cut -d '.' -f 1) $argv
end

function gpu --wraps='git pull $argv' --description 'alias gpu=git pull $argv'
  git pull $argv
end

function gup --wraps='git push $argv' --description 'alias gup=git push $argv'
  git push $argv
end

function gr --wraps='git rebase $argv' --description 'alias gr=git rebase $argv'
  git rebase $argv
end

function gri --wraps='git rebase -i $argv' --description 'alias gri=git rebase -i $argv'
  git rebase -i $argv
end

function grc --wraps='git rebase --continue $argv' --description 'alias grc=git rebase --continue $argv'
  git rebase --continue $argv
end

function gra --wraps='git rebase --abort $argv' --description 'alias gra=git rebase --abort $argv'
  git rebase --abort $argv
end

function gs --wraps='git status $argv' --description 'alias gs=git status $argv'
  git status $argv
end

function gsync --wraps='git checkout main && git pull' --description 'alias gsync=git checkout main && git pull'
  git checkout main && git pull
end

function gwip --wraps='git add -A && git commit --no-verify -m \'~~WIP~~\'' --description='alias gwip=git add -A && git commit --no-verify -m \'~~WIP~~\''
  git add -A && git commit --no-verify -m '~~WIP~~'
end

function gundo --wraps='git reset HEAD~1 --mixed' --description 'alias gundo=git reset HEAD~1 --mixed'
  git reset HEAD~1 --mixed
end

function gx
  git branch --merged | grep -v "^\*\\|main" | xargs -n 1 git branch -d
end
