{
	lib,
	pkgs,
	...
}: {
	imports = [
		
	];
	home = {
		packages = lib.attrValues {
			inherit
				(pkgs)
				alejandra
				gcc
				shfmt
				shellcheck
				;
			

    };
	};
}
