{
  config,
  pkgs,
  ...
}: {
  programs.oh-my-posh = {
    enable = true;
    useTheme = "fish";
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
