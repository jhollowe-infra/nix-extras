pkgs:

let inherit (pkgs) callPackage lib;

in {

  hamrs = callPackage ./pkgs/hamrs/package.nix { };

}
