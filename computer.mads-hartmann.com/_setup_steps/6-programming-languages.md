---
title: Programming languages and related tools
---

For the most part I use Docker during development on my own projects, but sometimes it's still handy to have a programming language installed on the system, and sometimes you need to be able to easily switch between versions. Because of that I use [asdf](https://asdf-vm.com) to handle all my programming languages.

#### NodeJS

Install [NodeJS](https://nodejs.org/en/)

```sh
asdf plugin add nodejs

# The NodeJS asdf plugin verifies the binaries
# See https://github.com/asdf-vm/asdf-nodejs for more information
brew install gpg
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

asdf install nodejs 15.8.0
asdf global nodejs 15.8.0
```

#### Python

Install [Python](https://www.python.org)

```sh
asdf plugin add python
asdf install python 3.9.1
asdf global python 3.9.1
```

#### Ruby

Install [Ruby](https://www.ruby-lang.org/en/):

```sh
asdf plugin add ruby
asdf install ruby 3.0.0
asdf global ruby 3.0.0
```

No need to set `GEM_HOME` as it depends on the version of Ruby that's activated. Install global gems:

```sh
gem install bundler
```

Verify everything looks as expected:

```sh
which ruby      # Make sure it is the .asdf/shims one
ruby --version  # ruby 3.0.0
gem env         # It should use the .asdf path for most things
```

#### Terraform

Install [Terraform](https://www.terraform.io)

```sh
asdf plugin add terraform
asdf install terraform 0.14.6
asdf global terraform 0.14.6
```

#### ShellCheck

Install [ShellCheck](https://www.shellcheck.net)

```sh
brew install shellcheck
```
