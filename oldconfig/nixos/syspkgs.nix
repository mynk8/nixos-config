{pkgs, inputs, ...}:

{
  environment.systemPackages = with pkgs; [
    kitty
    firefox
    git
    wirelesstools
    usbutils
    neovim
    telegram-desktop
    gcc
    brave
    easyeffects
    pavucontrol
    nil
    wl-clipboard
  ];
  xdg.portal = {
	enable = true;
	extraPortals = with pkgs; [
		xdg-desktop-portal-gtk
		xdg-desktop-portal-kde
	];
  };
}
