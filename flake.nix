{
  description = "en liten test"
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs =
    inputs:
    let
      inherit (inputs.nixpkgs) lib;
      hosts = [
        "knights"
        "leafs"
        "donald"
      ];
    in
    {
      nixosConfigurations = lib.genAttrs hosts (
        host:
        lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./configuration.nix
            ./hosts/${host}
          ];
        }
      );
    };
}
