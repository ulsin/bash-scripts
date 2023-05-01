#!/bin/bash

## Functions
 
### Emoji-log functions
function gcm() {
  git commit -m "$*"
}

function gca() {
  git commit --amend --no-edit
}

function gcb() {
  gcm "build: $@"
}

function gcch() {
  gcm "chore: $@"
}

function gcci() {
  gcm "ci: $@"
}

function gcd() {
  gcm "docs: $@"
}

function gcft() {
  gcm "feat: $@"
}

function gcfix() {
  gcm "fix: $@"
}

function gcp() {
  gcm "perf: $@"
}

function gcref() {
  gcm "refactor: $@"
}

function gcrev() {
  gcm "revert: $@"
}

function gcs() {
  gcm "style: $@"
}

function gct() {
  gcm "test: $@"
}

function gra() {
  git remote add "$1" "$2"
}

function grr() {
  git remote remove "$1"
}

function greha() {
  # running git status to let user know what they are doing
  git status -s

  read -p "are you sure you want to reset everything to previous commit? (y/n) " answer

  if [ "$answer" == "y" ]
  then
    git reset --hard HEAD
  fi
}

function gp() {
  trackingBranch=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>&1)
  currentBranch=$(git branch --show-current)
  if [[ "$trackingBranch" == *"fatal"* ]]; then
    git push --set-upstream origin $currentBranch
  else
    git push $@
  fi
}

function ghelp() {
  echo "
    GENERAL
    ====================
    g     = git
    gs    = git status -s
    gls   = git ls-files

    gd    = git diff --word-diff
    gds   = gd --staged
    gdc   = gd --cached

    gre   = git restore # for restoring unstaged changes
    gres  = git restore --staged # for restoring staged changes
    greha = git reset --hard HEAD

    ga    = git add --verbose
    gam   = git add -u --verbose
    gaa   = git add --all --verbose
    gap   = git add --patch
    
    gp    = git push
    gpl   = git pull
    gf    = git fetch
    
    gl    = git log --decorate --graph
    glo   = git log --decorate --graph --oneline
    
    gco   = git chekout
    gnb   = git checkout -b
    gbd   = git branch -d
    gbdf  = git branch -D (force delete)
    
    gr    = git remote -v
    gra   = git remote add <remote> <url>
    grr   = git remote remove <remote>
    
    COMMIT MESSAGES
    ====================

    gc    = git commit
    gcm   = git commit -m
    gca   = git commit --amend --no-edit (amend last commit, keep message)

    gcb   = build
    gcch  = chore
    gcci  = ci
    gcd   = docs
    gcft  = feat
    gcfix = fix
    gcp   = perf
    gcref = refac
    gcrev = rever
    gcs   = style
    gct   = test

  "
}

## Aliases
alias g='git'
alias gs='git status -s'
alias gls='git ls-files'

alias gd='git diff --word-diff'
alias gds='gd --staged'
alias gdc='gd --cached'

alias gre='git restore' # for restoring unstaged changes
alias gres='git restore --staged' # for removing file from added

alias ga='git add --verbose'
alias gam='git add -u --verbose'
alias gaa='git add --all --verbose'
alias gap='git add --patch' # interactive add that let's you add "hunks" of files (or split into smaller hunks) if you accidently made many unrelated changes that you want to keep in each of their own commits

alias gc='git commit'
alias gcm='git commit -m'

#alias gp='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gl='git log --decorate --graph'
alias glo='git log --oneline --graph'

alias gco='git checkout'
alias gnb='git checkout -b'
alias gb='git branch -vv'
alias gbd='git branch -d'
alias gbdf='git branch -D'

alias gr='git remote -v'

alias gh='ghelp | cat'
