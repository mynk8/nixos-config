{ pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./audio.nix
      ./fonts.nix
      ./syspkgs.nix
      ./vtz.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  time.timeZone = "Asia/Calcutta";
  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lucky = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       tree
     ];
  };  
  system.stateVersion = "24.05"; # Did you read the comment?
}

