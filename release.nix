{ nixpkgs ? <nixpkgs>, system ? builtins.currentSystem }:

let
  handleTest = t:
    (import "${nixpkgs}/nixos/tests/make-test-python.nix") (import t);
  pkgs = (import nixpkgs) {
    overlays = [ (import ./default.nix) ];
    config.allowUnfree = true;
  };

in rec {
  # Evaluate overlay packages
  inherit (pkgs) hamrs;

  # beegfs-client = pkgs.linuxPackages.beegfs;

  # Tests
  tests = {
    # name = handleTest ./tests/name.nix {};
  };
}
