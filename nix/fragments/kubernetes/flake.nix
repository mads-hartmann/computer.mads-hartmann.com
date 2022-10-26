{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = { nixpkgs, ... }:
    let
      # Hardcoded for now
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.cowsay ];
      };
    };
}