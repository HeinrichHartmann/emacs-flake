{
  description = "A flake for emacs-head and emacs-nox-head";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    emacs-overlay.url = "github:nix-community/emacs-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, emacs-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ emacs-overlay.overlay ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in {
        packages.emacs-unstable = pkgs.emacs-unstable;
        packages.emacs-unstable-nox = pkgs.emacs-unstable-nox;
        defaultPackage = pkgs.emacs-unstable-nox;
      }
    );
}
