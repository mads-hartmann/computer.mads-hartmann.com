---
title: Programming languages and related tools
---

[NodeJS](https://nodejs.org/en/)

```sh
asdf plugin add nodejs

# The NodeJS asdf plugin verifies the binaries
# See https://github.com/asdf-vm/asdf-nodejs for more information
brew install gpg
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

asdf install nodejs 15.8.0
asdf global nodejs 15.8.0
```

[Python](https://www.python.org)

```sh
asdf plugin add python
asdf install python 3.9.1
asdf global python 3.9.1
```

[Ruby](https://www.ruby-lang.org/en/)

```sh
asdf plugin add ruby
asdf install ruby 3.0.0
asdf global ruby 3.0.0
```

[Terraform](https://www.terraform.io)

```sh
asdf plugin add terraform
asdf install terraform 0.14.6
asdf global terraform 0.14.6
```

[ShellCheck](https://www.shellcheck.net)

```sh
brew install shellcheck
```
