{
  description = "Tools that are nice to have when working with Kubernetes";
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      packages = [
        pkgs.kubectl
        pkgs.kubectx
        pkgs.stern
      ];
    in
    {
      packages = packages;
      devShells.${system}.default = pkgs.mkShell { inherit packages; };
    };
}
