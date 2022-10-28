{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    # Using branch nix (so this isn't pointing to the nix subfolder.)
    computer.url = "github:mads-hartmann/computer.mads-hartmann.com/nix";
    computer.flake = false
  };

  outputs = { nixpkgs, computer, ... }:
    let
      # Hardcoded for now
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      kubernetes = import "${computer}/nix/fragments/kubernetes" { inherit pkgs };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = kubernetes ++ [ 
          pkgs.cowsay
        ];
      };
    };
}
