{
  config,
  pkgs,
  username,
  ...
}: {
  services.xserver.displayManager.gdm = {
    enable = true;
    autoSuspend = false;
  };

  services.logind.lidSwitch = "ignore";

  services.logind.lidSwitchDocked = "ignore";

   services.tlp = {
    enable = true;
    settings = {
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
    };
  };

  # Disable GNOMEs power management
  services.power-profiles-daemon.enable = false;

  # Enable thermald (only necessary if on Intel CPUs)
  services.thermald.enable = true;

  # Enable powertop
  #powerManagement.powertop.enable = true;
}
