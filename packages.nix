pkgs:

let inherit (pkgs) callPackage lib;

in {

  meshtasticd = callPackage ./pkgs/meshtasticd/package.nix { };

  hamrs = callPackage ./pkgs/hamrs/package.nix { };

}
