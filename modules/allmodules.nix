let
  importModule = module:
    { lib, ... }: {
      nixpkgs.overlays = [ (import ../default.nix) ];
      nixpkgs.config.allowUnfree = lib.mkDefault true;

      imports = [ module ];
    };

in {

  meshtasticd = importModule ./meshtasticd.nix;
}
