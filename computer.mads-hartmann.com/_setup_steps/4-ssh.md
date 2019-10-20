---
title: SSH Config
---
Mostly taken from [Githubs documentation](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

Tell sshd to use the macOS keychain:

```sh
echo "Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config
```

Generate a new SSH key and add it to your keychain:

```sh
ssh-keygen -t rsa -b 4096 -C "mads379@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
```

Tell Github about your new key:

```sh
cat ~/.ssh/id_rsa.pub | pbcopy
open "https://github.com/settings/keys"
```
