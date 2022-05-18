{ config, pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      git
    ];
  };
  
  #users.mutableUsers = false;  
}
