---
title: Setting up dotfiles
---

Based on [this article](https://www.atlassian.com/git/tutorials/dotfiles).

I use a bare git repostiory in my $HOME folder to track my dotfiler, together with a convenience alias for git named `config`.

```sh
# Set up the bare repository
git clone --bare git@github.com:mads-hartmann/dotfilesv2.git
alias config='/usr/bin/git --git-dir=$HOME/dotfilesv2.git/ --work-tree=$HOME'

# Move things to backup directory for review later.
mkdir -p .config-backup && \
config checkout 2>&1 | grep '\t' | awk '{gsub(/\t/,"", $0);print}' | xargs -I{} sh -c 'mkdir -p ".config-backup/$(dirname "{}")" && mv "{}" ".config-backup/{}"'

# Now checkout the dotfiles
config checkout
```
