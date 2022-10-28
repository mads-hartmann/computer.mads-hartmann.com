{
  description = "Help me use my tools";
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      packages = [
        pkgs.tldr
        pkgs.cheat
      ];
    in
    {
      packages = packages;
      devShells.${system}.default = pkgs.mkShell { inherit packages; };
    };
}
