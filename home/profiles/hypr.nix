{
	lib,
	pkgs,
	...
}:
let
	  myAliases = {
		ll = "ls -l";
		".." = "cd ..";
		};
in
{
	imports = [
		../modules/buildenv
		../modules/config/gtk.nix
		../modules/programs/git.nix
		../modules/programs/utils.nix
		../modules/programs/zsh.nix
		../modules/svc	
	];

	
	home = {
		packages = lib.attrValues {
			inherit
				(pkgs)
				fzf
        acpi
        vesktop
        blender
        davinci-resolve
        libreoffice-fresh
        arduino
        unityhub
        paperless-ngx
        yaru-theme
        rofi networkmanagerapplet cbatticon nitrogen xlockmore xdgmenumaker gsimplecal lxrandr lxappearance dunst
				jamesdsp
        jgmenu tint2 conky playerctl
        sxhkd
        hsetroot
        audacity
        zathura
        rnote
        fish
        gnome-tweaks
        wofi
        lua-language-server
        obsidian
        ulauncher
				coreutils
        krita
				fd
        gh
				file
        easyeffects
				findutils
        flat-remix-gtk
        neovim
        kitty
        ripgrep
				lz4
				unrar
				unzip
				zip
				killall
				curl
				brave
				distrobox
				;
		};
	};
}
