---
title: ZSH configuration
---

Install [ZSH completions](https://github.com/zsh-users/zsh-completions):

```sh
brew install zsh-completions
sudo chown -R $(whoami) /usr/local/share/zsh/site-functions /usr/local/share /usr/local/share/zsh
sudo chmod -R 755 /usr/local/share/zsh/site-functions /usr/local/share /usr/local/share/zsh
```

Install [starship](http://starship.rs)

```sh
brew install starship 
```
