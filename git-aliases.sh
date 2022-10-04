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
  gcm "📦 NEW: $@"
}

function gcupg() {
  gcm "🆙 UPGRADE: $@"
}

function gcimp() {
  gcm "👌 IMPROVE: $@"
}

function gcmin() {
  gcm "🤏 MINOR: $@"
}

function gcref() {
  gcm "🔨 REFACTOR: $@"
}

function gcfix() {
  gcm "🐛 FIX: $@"
}

function gcbug() {
  gcfix "$@"
}

function gcrel() {
  gcm "🚀 RELEASE: $@"
}

function gcdoc() {
  gcm "📖 DOC: $@"
}

function gctst() {
  gcm "✅ TEST: $@"
}

function gcmrg() {
  gcm "🔀 MERGE: $@"
}

function gcrmv() {
  gcm "❌ REMOVE: $@"
}

function gccln() {
  gcm "🧹 CLEAN-UP: $@"
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

    ga    = git add
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

    gcnew = 📦 NEW
    gcupg = 🆙 UPGRADE
    gcimp = 👌 IMPROVE
    gcmin = 🤏 MINOR
    gcref = 🔨 REFACTOR
    gcfix = 🐛 FIX
    gcbug = 🐛 FIX
    gcrel = 🚀 RELEASE
    gcdoc = 📖 DOC
    gctst = ✅ TEST
    gcmrg = 🔀 MERGE
    gcrmv = ❌ REMOVE
    gccln = 🧹 CLEAN-UP
  "
}

## Aliases
alias g='git'
alias gs='git status -s'
alias gls='git ls-files'

alias gd='git diff'
alias gds='git diff --staged'
alias gdc='git diff --cached'

alias gre='git restore'
alias gres='git restore --staged'

alias ga='git add'
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
