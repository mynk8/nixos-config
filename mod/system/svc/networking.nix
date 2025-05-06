{
	networking = {
    hostName = "nixos-loq";
    networkmanager = {
      enable = true;
      wifi.macAddress = "random";
    };
    # resolvconf.enable = false;
    firewall.enable = true;
    firewall.allowedUDPPorts = [ 67 68 ];
    firewall.allowedTCPPorts = [ 8000 8081 8082 ];
	};
  networking.resolvconf.dnsExtensionMechanism = false;
  networking.nameservers = [ "1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one" ];

  services.resolved = {
    enable = false;
    dnssec = "false";
    fallbackDns = [ "1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one" ];
    dnsovertls = "true";
  };
}
