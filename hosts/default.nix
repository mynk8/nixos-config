{
  homeImports,
  inputs,
  self,
  ...
}: let
  inherit (inputs.nixpkgs.lib) nixosSystem;
#  import = [ ./lucky/hypr.nix  ];
  modules = "${self}/mod/system";
  profiles = "${self}/hosts";

  specialArgs = {inherit inputs self;};
in {
  flake.nixosConfigurations = {

    nixos-loq = nixosSystem {
      inherit specialArgs;

      modules = [
        ./lucky
        "${modules}/config"
        "${modules}/programs"
        "${modules}/svc"
        "${modules}/virtualisation/docker.nix"
        "${profiles}/lucky"
        ./lucky/hypr.nix

        {
          home-manager = {
            users.lucky11.imports = homeImports."lucky11@nixos-loq";
            backupFileExtension = "backup";
            extraSpecialArgs = specialArgs;
          };
        }
      ];
    };
  };
}
