# A significant number of these aliases look stupid, and yet I surprisingly use
# a significant number of them. What does this tell about me?

alias GA='git add'
alias GB='git branch'
alias GC='git commit'
alias GCA='git commit --amend'
alias GCAM='git commit --amend --message'
alias GCM='git commit --message'
alias GCO='git checkout'
alias GCOH1='git checkout HEAD~1'
alias GCOM='git checkout master'
alias GD='git diff'
function GD~ { git diff $1~ $1; }; # Show changes by a given commit.
function GD~NO { git diff --name-only $1~ $1; }; # Show changes by a given commit.
alias GDH1='git diff HEAD~1'
alias GDNO='git diff --name-only'
alias GF='git fetch'
alias GL='git log -n3'
alias GLO='git log --oneline'
alias GM='git merge'
alias GMV='git mv'
alias GP='git pull'
alias GPU='git push'
alias GRM='git rm'
alias GRH='git reset --hard'
alias GS='git status'
alias GSTA='git stash apply'
alias GSTC='git stash clear'
alias GSTL='git stash list'
alias GST='git stash'
alias GW='git whatchanged'

