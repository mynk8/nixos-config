{pkgs, config, inputs, ...}:
{
	hardware.graphics = {
		enable = true;
		extraPackages = with pkgs; [ nvidia-vaapi-driver ];
	};
  hardware.graphics.enable32Bit = true;
	services.xserver.videoDrivers = [  "nvidia" ];
  services.xserver.dpi = 96;
  services.flatpak.enable = true;
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc
    zlib
    openssl
  ];
  boot.kernelParams = ["nvidia_drm.fbdev=1" "nvidia-drm.modeset=1"];
  hardware.nvidia-container-toolkit.enable = true;
	hardware.nvidia = {
		modesetting.enable = true;
		powerManagement.enable = false;
		open = true;
		nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.latest;
	};
  environment.systemPackages = with pkgs; [ steam appimage-run rofi dunst picom xcolor pulsemixer xsettingsd sxhkd dmenu feh picom polybar conky minikube xorg.xinit sx xsettingsd fastcompmgr xclip ngrok eza lsd bat ];

  programs = {
    dconf.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
   };

  services.xserver = {
    enable = true;
    windowManager.berry.enable = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
    displayManager.defaultSession = "xfce";
  };
	xdg.portal = {
		enable = true;
		extraPortals = with pkgs; [
			xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
		];
	};
}
