{
  description = "A flake to manage my website";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = import inputs.systems;
    perSystem = { config, self', inputs', pkgs, system, ... }: {

      packages.default = pkgs.writeShellApplication {
        name = "jmarkakis.github.io";
        runtimeInputs = with pkgs; [ bundler gcc gnumake ];
        text = "bundler install && bundler exec jekyll serve";
      };

      packages.update = pkgs.writeShellApplication {
        name = "jmarkakis.github.io-update";
        runtimeInputs = with pkgs; [ bundler gcc gnumake ];
        text = "bundler update && bundler lock";
      };
    };
  };
}
