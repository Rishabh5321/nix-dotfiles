{
  config,
  pkgs,
  ...
}: {
  # OpenGL
  hardware.graphics = {
    enable = true;
    #extraPackages = true;
    #extraPackages32 = true;
  };
}
