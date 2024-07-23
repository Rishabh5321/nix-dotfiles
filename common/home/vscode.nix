{
  config,
  pkgs-unstable,
  inputs,
  ...
}: {
  programs.vscode = {
    enable = true;
  };
}
