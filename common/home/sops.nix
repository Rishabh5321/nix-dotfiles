{
  inputs,
  ...
}: {
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops = {
    age.keyFile = "/home/rishabh/.config/sops/age/keys.txt";

    defaultSopsFile = ../../secrets/secrets.yaml;
    validateSopsFiles = false;

    secrets = {
      "private_keys/ta" = {
        path = "home/rishabh/.ssh/ssh_host";
      };
    };
  };
}
