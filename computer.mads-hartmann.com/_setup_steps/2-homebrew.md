---
title: Install Homebrew & essential apps
---

Install [homebrew](https://brew.sh) so we can install all the other thigns we'll need:

```sh
/usr/bin/ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[iTerm](https://iterm2.com) is my terminal of choice:

```sh
brew cask install iterm2
```

I use the [Fira Mono for Powerline](https://github.com/powerline/fonts) at the moment:

```sh
brew install svn # hah, font-fira-mono-for-powerline
brew install font-fira-mono-for-powerline
```

Install a few things from the app store

- 1Password. I use it for all my credentials
