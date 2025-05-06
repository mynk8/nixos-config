{
	config,
	pkgs,
	...
}:
{
	gtk.enable = true;

  gtk.cursorTheme = {
    package = pkgs.apple-cursor;
    name = "MacOS";
    size = 24;
  };
	gtk.iconTheme = {
		name = "Papirus-Dark";
		package = pkgs.papirus-icon-theme;
	};

	gtk.theme = {
    name = "Flat-Remix-Teal-Dark";
		package = pkgs.gruvbox-gtk-theme;
	};

	gtk.gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
}
