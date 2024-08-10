let
  importModule = module: { lib, ...} : {
    nixpkgs.overlays = [ (import ../default.nix) ];
    nixpkgs.config.allowUnfree = lib.mkDefault true;

    imports = [ module ];
  };

in {
  # name = importModule ./name.nix;
}
