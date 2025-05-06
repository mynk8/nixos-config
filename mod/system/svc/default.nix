{pkgs, ...}: {
  imports = [
    ./keyring.nix
    ./networking.nix
    ./pipewire.nix
  ];
  services = {
    accounts-daemon.enable = true;
    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    # avahi = {
    #   enable = true;
    #   ipv4 = true;
    #   nssmdns4 = true;
    #   publish = {
    #     enable = true;
    #     addresses = true;
    #     domain = true;
    #     userServices = true;
    #   };
    # };
    dbus = {
      enable = true;
      implementation = "broker";
      packages = with pkgs; [udisks2];
    };
    udev.packages = with pkgs; [android-udev-rules];
  };
}
