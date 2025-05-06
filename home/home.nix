{
	home = {
		username = "lucky11";
		homeDirectory = "/home/lucky11";
		extraOutputsToInstall = [ "doc" "devdoc" ];
	};

	manual = {
		manpages.enable = true;
		html.enable = true;
	};
	programs.home-manager.enable = true;
}
