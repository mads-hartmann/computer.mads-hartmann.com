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
  IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config2
ssh-add -K ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | pbcopy
open "https://github.com/settings/keys"
```

```
git config --global user.email "mads379@gmail.com"
git config --global user.name "Mads Hartmann"
```

## Bash setup

```
https://askubuntu.com/a/121075
.profile
.bashrc
```

```
brew install gnu-sed coreutils
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
```

```
brew install bash-completion
```

```
brew install starship
brew cask install font-fira-mono-for-powerline
echo 'eval "$(starship init bash)"' > ~/.bashrc
```

## Visual studio code

```
brew cask install visual-studio-code
```

I need my keybindings

```
TODO: They're too verbose to paste in here IMO.
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
