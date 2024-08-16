{pkgs-stable, ...}: {
  environment.systemPackages = with pkgs-stable; [
    plex-media-player
    kdePackages.kdeconnect-kde
  ];
}
