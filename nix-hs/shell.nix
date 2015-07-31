{ nixpkgs ? import <nixpkgs> {}, compiler ? "{{ compiler ? ghc7101}}" }:
(import ./default.nix { inherit nixpkgs compiler; }).env
