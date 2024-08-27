{ inputs, ... }: {
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    validateSopsFiles = false;

    age = {
      sshKeyPaths = [ "/etc/ssh/ssh_host_ed25529_key" ];

      keyFile = [ "/var/lib/sops-nix/key.txt" ];

      generateKey = true;
    };

    secrets = {
      example-password = { };
    };
  };
}
