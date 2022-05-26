{ config, pkgs, ... }: {
  config = {
    users.users.jessenieboer = {
      description = "Jesse Nieboer";
      extraGroups = [ "wheel" ];
      home = "/home/jessenieboer";
      initialPassword = "goblue";
      isNormalUser = true;
    }; 
  };
}
