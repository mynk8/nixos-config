{config, pkgs,...}: {
	virtualisation.containers.enable =  true;
  virtualisation = {
    docker = {
      enableNvidia = true;
      enable = true;
    };
  };
}
