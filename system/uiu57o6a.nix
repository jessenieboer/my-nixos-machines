{ config, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
  ];

  config = {

    boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    networking = {
      useDHCP = false;
      interfaces.eth0.useDHCP = true;
    };  

    nix = {
      package = pkgs.nixFlakes;
      extraOptions = ''
        experimental-features = nix-command flakes
      '';
    };

    system.stateVersion = "21.11";

    virtualisation.hypervGuest = {
      enable = true;
	    videoMode = "1920x1080";
    };
  };
}

