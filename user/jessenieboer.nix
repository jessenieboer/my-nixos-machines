{ config, pkgs, ... }: {
  config = {
    users.users.jessenieboer = {
      description = "Jesse Nieboer";
      extraGroups = [ ];
      home = "/home/jessenieboer";
      initialPassword = "goblue";
      isNormalUser = true;
    }; 
  };
}
