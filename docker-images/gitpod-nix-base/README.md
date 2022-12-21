# Gitpod Nix base

This is my preferred base image to use with Gitpod for projects that use Nix.

The image contains:

- [Nix](https://nixos.org/)
- [Devenv](https://devenv.sh/)

## Publishing the image

This is manual for now.

```sh
export VERSION=2
docker build . --tag madshartmann/gitpod-nix-base:$VERSION

docker login 
docker push madshartmann/gitpod-nix-base:$VERSION
```
