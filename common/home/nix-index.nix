_: {
  # supplies the command-not-found hook to tell about nix packages
  programs.nix-index = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
