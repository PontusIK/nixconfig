{ config, pkgs, ... }:

{

  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;


  environment.sessionVariables.COSMIC_DATA_CONTROL_ENABLED = 1;
  services.geoclue2.enable = true;

  environment.systemPackages = with pkgs; [
    chronos
    cosmic-ext-calculator
    cosmic-reader
    quick-webapps
  ];

}
