{pkgs, ...}: {
  users.users.lucky11 = {
    isNormalUser = true;
    shell = pkgs.fish;
    
    extraGroups = [
      "audio"
      "docker"
      "podman"
      "input"
      "libvirtd"
      "networkmanager"
      "video"
      "wheel"
    ];

  };
}
