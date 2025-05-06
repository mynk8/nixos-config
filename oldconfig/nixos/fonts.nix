{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = [ "Lekton" "JetBrainsMono" "Monaspice" ];})
    ubuntu_font_family
    ubuntu_sans
  ];
}
