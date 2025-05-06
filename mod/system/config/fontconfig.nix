{pkgs, ...}: {
  fonts = {
    fontconfig = {
      enable = true;
      antialias = true;
      hinting = {
        enable = true;
        autohint = false;
        style = "full";
      };

      subpixel = {
        lcdfilter = "default";
        rgba = "rgb";
      };
    };
    enableDefaultPackages = false;
    fontDir = {
      enable = true;
      decompressFonts = true;
    };

    packages = with pkgs; [
      ubuntu-sans
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      nerd-fonts.iosevka
      nerd-fonts._0xproto
      nerd-fonts.blex-mono
      nerd-fonts.monaspace
      nerd-fonts.jetbrains-mono
      (google-fonts.override {fonts = ["Inter"];})
    ];
  };
}
