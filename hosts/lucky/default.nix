{pkgs, config, ...}:
{
	imports = [
		./hardware-configuration.nix
	];
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
  services.fstrim.enable = true;
	boot = {
		consoleLogLevel = 3;
		initrd = {
			systemd.enable = true;
		};
		kernelParams = [
			"quiet"
			"systemd.show_status=auto"
			"rd.udev.log_level=3"
      "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
		];
		plymouth.enable = true;
	};
	networking.hostName = "nixos-loq";
  hardware.bluetooth.enable = true; # enables support for Bluetooth
	services.libinput.enable = true;
	zramSwap = {
		enable = true;
		algorithm = "zstd";
	};
  # systemd.services.setmacaddr = {
  #         script = ''
  #           /run/current-system/sw/bin/ip link set dev eth0 address ${macaddr}
  #           /run/current-system/sw/bin/systemctl stop dhcpcd.service
  #           /run/current-system/sw/bin/ip addr flush eth0
  #           /run/current-system/sw/bin/systemctl start dhcpcd.service
  #         '';
  #         wantedBy = [ "basic.target" ];
  #         after = [ "dhcpcd.service" ];
  # };
	system.stateVersion = "24.05";
}
