{pkgs, ...}: {
  virtualisation = {
    libvirtd = {
      enable = true;
      qemuOvmf = true;
      qemuSwtpm = true;
      qemuOvmfPackage = pkgs.OVMFFull;
    };
  };

  environment.sessionVariables.LIBVIRT_DEFAULT_URI = ["qemu:///system"];
  environment.systemPackages = with pkgs; [
    virt-manager
    win-virtio
    libvirt
    qemu
    swtpm
  ];
  users.users.putchar = {
    extraGroups = ["libvirtd" "kvm" "qemu-libvirtd"];
  };
}
