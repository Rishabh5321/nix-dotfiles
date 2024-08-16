{pkgs, ...}: {
  services.rpcbind.enable = true;
  environment.systemPackages = [pkgs.nfs-utils];
  boot.initrd = {
    supportedFilesystems = ["nfs"];
    kernelModules = ["nfs"];
  };
  fileSystems = {
    "/mnt/" = {
      device = "dell:/mnt/";
      fsType = "nfs";
      options = ["x-systemd.automount" "nofail" "_netdev" "x-systemd.idle-timeout=600"];
    };
    "/home/" = {
      device = "dell:/home/";
      fsType = "nfs";
      options = ["x-systemd.automount" "nofail" "_netdev" "x-systemd.idle-timeout=600"];
    };
  };
}
