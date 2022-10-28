{
  packages = {pkgs}: [
    pkgs.kubectl
    # kubectx and kubens
    pkgs.kubectx
    pkgs.stern
  ]
}
