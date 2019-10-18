---
title: SSH Config
---
Mostly taken from [Githubs documentation](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

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
