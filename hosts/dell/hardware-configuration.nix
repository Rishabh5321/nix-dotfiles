# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "ahci"
    "usbhid"
    "usb_storage"
    "uas"
    "sd_mod"
    "rtsx_usb_sdmmc"
    "amdgpu"
  ];
  boot.kernelParams = ["radeon.si_support=0" "amdgpu.si_support=1"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/973a203d-bbd8-4fe1-87af-e6868549e67e";
    fsType = "btrfs";
    options = ["subvol=@"];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/03FE-D7B7";
    fsType = "vfat";
    options = ["fmask=0022" "dmask=0022"];
  };

  swapDevices = [{device = "/dev/disk/by-uuid/ec32bd39-d36c-4064-90cc-dc3f1b5c1f1e";}];

  fileSystems."/mnt/Raid" = {
    device = "/dev/disk/by-uuid/d35415ef-75c1-4708-9759-b7d1ae846559";
    fsType = "ext4";
  };

  fileSystems."/mnt/E_Disk" = {
    device = "/dev/disk/by-uuid/b03102c2-5807-4f8c-bcde-4de8758679b0";
    fsType = "ext4";
  };

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp2s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp3s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  systemd.tmpfiles.rules = [
    "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
  ];

  # hardware = {
  #   hardware.extraPackages = with pkgs; [
  #     amdvlk
  #   ];
  #   hardware.extraPackages32 = with pkgs; [
  #     driversi686Linux.amdvlk
  #   ];
  # };
}
