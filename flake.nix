{
  description = "A shell with Jekyll";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs: with inputs; {
    devShells = nixpkgs.lib.genAttrs (import systems) (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [ bundler ];
            shellHook = "bundler install";
          };
        });
  };
}
