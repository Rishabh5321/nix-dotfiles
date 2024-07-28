{
  config,
  wallpaper,
  username,
  ...
}: let
  color0 = "rgb(${config.stylix.base16Scheme.base00})";
  color2 = "rgb(${config.stylix.base16Scheme.base02})";
  color5 = "rgb(${config.stylix.base16Scheme.base05})";
  color8 = "rgb(${config.stylix.base16Scheme.base08})";
  color10 = "rgb(${config.stylix.base16Scheme.base0A})";
  color14 = "rgb(${config.stylix.base16Scheme.base0E})";
in {
  programs.hyprlock = {
    enable = true;

    sourceFirst = true;

    settings = {
      # GENERAL
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

      # BACKGROUND
      background = [
        {
          #path = screenshot   # screenshot of your desktop
          path = /home/${username}/Pictures/Wallpapers/${wallpaper};
          # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
          blur_size = 5;
          blur_passes = 1; # 0 disables blurring
          noise = 0.0117;
          contrast = 1.3000; # Vibrant!!!
          brightness = 0.8000;
          vibrancy = 0.2100;
          vibrancy_darkness = 0.0;
        }
      ];

      # TIME
      label = [
        {
          text = cmd[update:18000000] echo " <b> "$(date +'%A, %-d %B %Y')" </b> ";
          color = color14;
          font_size = 34;
          font_family = JetBrains Mono Nerd Font Mono ExtraBold;
          position = "0, -100";
          halign = center;
          valign = top;
        }
      ];

      # INPUT FIELD
      input-field = [
        {
          size = "300, 60";
          outline_thickness = 4;
          dots_size = 0.2;
          dots_spacing = 0.2;
          dots_center = true;
          outer_color = color14;
          inner_color = color2;
          font_color = color5;
          fade_on_empty = false;
          placeholder_text = "<i>󰌾 Logged in as </i>$USER";
          hide_input = false;
          check_color = color14;
          fail_color = color8;
          fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
          capslock_color = color10;
          position = "0, -35";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
