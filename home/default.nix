{
	inputs,
	lib,
	...
}: let
	sharedModules = [
			./modules/programs/git.nix
			./modules/programs/utils.nix
			./modules/programs/zsh.nix
			./modules/svc
	];

	homeImports = {
		"lucky11@nixos-loq" =
		[
			./home.nix
			./profiles/hypr.nix
		]
		++ lib.concatLists [sharedModules];
	};

	inherit (inputs.home-manager.lib) homeManagerConfig;
	pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;

in {
	_module.args = {inherit homeImports; };

	flake = {
		homeConfigurations = {
			"lucky11@nixos-loq" = homeManagerConfig {
				inherit pkgs;
				modules = homeImports."lucky11@nixos-loq";
			};
		};
	};
}
