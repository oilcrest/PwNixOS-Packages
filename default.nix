{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  Responder = pkgs.callPackage ./pkgs/Responder { };
  impacket = pkgs.callPackage ./pkgs/impacket { };
  BloodHound = pkgs.callPackage ./pkgs/BloodHound { };
}
