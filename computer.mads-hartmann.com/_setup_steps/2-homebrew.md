---
title: Install Homebrew & essential apps
---

Install [homebrew](https://brew.sh) so we can install all the other things we'll need:

```sh
/usr/bin/ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[iTerm](https://iterm2.com) is my terminal of choice:

```sh
brew install --cask iterm2
```

I use the [Fira Mono for Powerline](https://github.com/powerline/fonts) at the moment:

```sh
brew install svn # Needed for font-fira-mono-for-powerline
brew install font-fira-mono-for-powerline
```

I use [Docker](https://www.docker.com)

```sh
brew install --cask docker
```

I almost always end up needed some of the gnu utilities when writing scripts that should work on Linux (e.g. for CI)

```sh
brew install coreutils
```
