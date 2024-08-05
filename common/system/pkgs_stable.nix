{
  config,
  pkgs-stable,
  host,
  inputs,
  username,
  options,
  ...
}: {
  environment.systemPackages = with pkgs-stable; [
    plex-media-player
    kdePackages.kdeconnect-kde
  ];
}
