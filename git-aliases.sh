#!/bin/bash

## Functions
 
### Emoji-log functions
function gcm() {
  git commit -m "$*"
}

function gca() {
  git commit --amend --no-edit
}

function gcnew() {
  gcm "๐ฆ NEW: $@"
}

function gcupg() {
  gcm "๐ UPGRADE: $@"
}

function gcimp() {
  gcm "๐ IMPROVE: $@"
}

function gcmin() {
  gcm "๐ค MINOR: $@"
}

function gcref() {
  gcm "๐จ REFACTOR: $@"
}

function gcfix() {
  gcm "๐ FIX: $@"
}

function gcbug() {
  gcfix "$@"
}

function gcrel() {
  gcm "๐ RELEASE: $@"
}

function gcdoc() {
  gcm "๐ DOC: $@"
}

function gctst() {
  gcm "โ TEST: $@"
}

function gcmrg() {
  gcm "๐ MERGE: $@"
}

function gcrmv() {
  gcm "โ REMOVE: $@"
}

function gccln() {
  gcm "๐งน CLEAN-UP: $@"
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

function ghelp() {
  echo "
    GENERAL
    ====================
    g     = git
    gs    = git status -s
    gls   = git ls-files

    gd    = git diff
    gds   = git diff --staged
    gdc   = git diff --cached

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

    gcnew = ๐ฆ NEW
    gcupg = ๐ UPGRADE
    gcimp = ๐ IMPROVE
    gcmin = ๐ค MINOR
    gcref = ๐จ REFACTOR
    gcfix = ๐ FIX
    gcbug = ๐ FIX
    gcrel = ๐ RELEASE
    gcdoc = ๐ DOC
    gctst = โ TEST
    gcmrg = ๐ MERGE
    gcrmv = โ REMOVE
    gccln = ๐งน CLEAN-UP
  "
}

## Aliases
alias g='git'
alias gs='git status -s'
alias gls='git ls-files'

alias gd='git diff'
alias gds='git diff --staged'
alias gdc='git diff --cached'

alias gre='git restore' # for restoring unstaged changes
alias gres='git restore --staged' # for removing file from added

alias ga='git add --verbose'
alias gam='git add -u --verbose'
alias gaa='git add --all --verbose'
alias gap='git add --patch' # interactive add that let's you add "hunks" of files (or split into smaller hunks) if you accidently made many unrelated changes that you want to keep in each of their own commits

alias gc='git commit'
alias gcm='git commit -m'

alias gp='git push'
alias gpl='git pull'
alias gf='git fetch
'
alias gl='git log --decorate --graph'
alias glo='git log --oneline --graph'

alias gco='git checkout'
alias gnb='git checkout -b'
alias gbd='git branch -d'
alias gbdf='git branch -D'

alias gr='git remote -v'

alias gh=ghelp
