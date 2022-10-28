{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    kubernetes.url = "path:../../../nix/fragments/kubernetes";
    help.url = "path:../../../nix/fragments/help";
  };

  outputs = inputs:
    let
      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = 
          inputs.kubernetes.packages ++ 
          inputs.help.packages ++ 
          [ pkgs.cowsay ];
      };
    };
}
