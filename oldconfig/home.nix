{ pkgs,  ... }:
{
  imports = [
    ./sh.nix
  ];
  home.username = "lucky11";
  home.homeDirectory="/home/lucky11";
  home.stateVersion = "24.05";
  gtk.enable = true;
  gtk.theme.package = pkgs.adw-gtk3;
  gtk.theme.name = "adw-gtk3-dark";
  # qt.enable = true;
  gtk.iconTheme.package = pkgs.papirus-icon-theme;
  gtk.iconTheme.name = "Papirus-Dark";
  programs.home-manager.enable = true;
}
