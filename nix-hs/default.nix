{ nixpkgs ? import <nixpkgs> {}, compiler ? "{{compiler ? ghc7101}}" }:
nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./{{ $basename }}.nix { }
