{ pkgs, ... }:
{
  packages = [ pkgs.git pkgs.docker pkgs.openssl pkgs.gnumake pkgs.gcc8 ];
  languages.nix.enable = true;
  languages.ruby.enable = true;
}
