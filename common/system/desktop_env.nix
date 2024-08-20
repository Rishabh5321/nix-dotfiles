{
  lib,
  pkgs,
  ...
}: {
  #services.desktopManager.plasma6.enable = true;
  #services.displayManager.sddm.enable = true;

  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = true;
      gnome.enable = true;
    };
    displayManager.gdm = {
      enable = true;
    };
  };
  #services.desktopManager.cosmic.enable = true;
  #services.displayManager.cosmic-greeter.enable = true;

  environment.systemPackages = with pkgs; [
    dconf-editor
    gnome-tweaks
  ];

  programs.ssh.askPassword = lib.mkForce "true";
}
