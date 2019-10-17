---
title: Setting up a new mac
permalink: /setting-up-a-new-mac
layout: page
toc: true
---

Version 2 of my dotfiles. In which I don't automate a thing, but just document it.

## Initial setup

## 1Password

I need my credentials. Install it through the App Store.

## Homebrew

Install Homebrew:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## iTerm2

I need my terminal

```
brew cask install iterm2
```

## Github SSH key

I need to have access to my code:

_Mostly taken from [Githubs documentation](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)_

```
ssh-keygen -t rsa -b 4096 -C "mads379@gmail.com"
eval "$(ssh-agent -s)"
echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | pbcopy
open "https://github.com/settings/keys"
```

## Dotfiles

Based on [this article](https://www.atlassian.com/git/tutorials/dotfiles).

```
# Set up the bare repository
git clone --bare git@github.com:mads-hartmann/dotfilesv2.git
alias config='/usr/bin/git --git-dir=$HOME/dotfilesv2.git/ --work-tree=$HOME'


# Move things to backup directory for review later.
mkdir -p .config-backup && \
config checkout 2>&1 | grep '\t' | awk '{gsub(/\t/,"", $0);print}' | xargs -I{} sh -c 'mkdir -p ".config-backup/$(dirname "{}")" && mv "{}" ".config-backup/{}"'

# Now checkout the dotfiles
config checkout
```

## Visual studio code

```
brew cask install visual-studio-code
```

I have a few extensions that I definitely need:

```
code --install-extension \
  EditorConfig.EditorConfig \
  letrieu.expand-region \
  eamodio.gitlens
```

I have a few basic settings that I can't live without.

## Other essential apps

- [Alfred](https://www.alfredapp.com). I use this as an app launcher, dictionary, clipboard manager.
- [TaskPaper](https://www.taskpaper.com)
- [BetterSnapTool](https://apps.apple.com/us/app/bettersnaptool/id417375580)
- [TablePlus](https://tableplus.com)

```
brew install coreutils # common gnu utilities. Almost certainly needed for bash scripts that run on Linux (CI).
```
