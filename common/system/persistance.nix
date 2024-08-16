{
  ...
}: {
  environment.persistence."/nix/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      # "/etc/machine-id"
    ];
    users.rishabh = {
      directories = [
        "Downloads"
        "Music"
        "Documents"
        "nix-dotfiles"
        "dotfiles"
        "Pictures"
        "Videos"
        ".local/share/sddm"
        ".mozilla"
        ".cache"
        ".ssh"
        ".config/discord"
        ".config/obs-studio"
        ".steam"
      ];
      files = [
      ];
    };
  };
}
