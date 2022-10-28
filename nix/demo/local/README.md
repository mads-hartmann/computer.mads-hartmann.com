# Demo : local

This is to provide a development that doesn't require pushing to my Git remote.

For every change, you have to tell Nix to fetch the latest files using `nix flake update`.

So it's mostly just editing `.nix` files and then running the following to see if things look fine:

```sh
nix flake update && nix flake check
```

Once the check is happy, try the shell

```sh
nix develop
```
