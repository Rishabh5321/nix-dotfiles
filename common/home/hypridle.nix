{
  lib,
  osConfig,
  ...
}: {
  services.hypridle = {
    enable = true;
    # settings = {
    #   general = {
    #     lock_cmd = "hyprlock";
    #     before_sleep_cmd = "hyprlock";
    #     after_sleep_cmd = "hyprctl dispatch dpms on";
    #     ignore_dbus_inhibit = false; # whether to ignore dbus-sent idle-inhibit requests (used by e.g. firefox or steam)
    #     ignore_systemd_inhibit = false; # whether to ignore systemd-inhibit --what=idle inhibitors
    #   };

    #   listener = [
    #     {
    #       timeout = 60;
    #       on-timeout = "notify-send 'Hypridle' 'locking'";
    #       on-resume = "notify-send 'Hypridle' 'resuming'";
    #     }
    #     {
    #       timeout = 70;
    #       on-timeout = "hyprlock";
    #     }
    #     {
    #       timeout = 120;
    #       on-timeout = "hyprctl dispatch dpms off";
    #       on-resume = "notify-send 'Hypridle' 'Welcome to Desktop'";
    #     }
    #   ];
    # };
  };
  xdg.configFile."hypr/hypridle.conf".text = ''
    # /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
    # Hypridle
    # Original config submitted by https://github.com/SherLock707


    general {
        lock_cmd = pidof hyprlock || hyprlock # runs hyprlock if it is not already running (this is always run when "loginctl lock-session" is called)
        # unlock_cmd = killall hyprlock # kills hyprlock when unlocking (this is always run when "loginctl unlock-session" is called)
        before_sleep_cmd = loginctl lock-session    # ensures that the session is locked before going to sleep
        after_sleep_cmd = hyprctl dispatch dpms on # turn of screen after sleep (not strictly necessary, but just in case)
        ignore_dbus_inhibit = false             # whether to ignore dbus-sent idle-inhibit requests (used by e.g. firefox or steam)
    }

    # turn off screen faster if session is already locked
    # (disabled by default)
    # listener {
    #     timeout = 30                            # 30 seconds
    #     on-timeout = pidof hyprlock && hyprctl dispatch dpms off # turns off the screen if hyprlock is active
    #     on-resume = pidof hyprlock && hyprctl dispatch dpms on    # command to run when activity is detected after timeout has fired.
    # }

    # Warn
    listener {
        timeout = 60                            # 9 min
        on-timeout = notify-send "You are idle!" # command to run when timeout has passed
        on-resume = notify-send "Welcome back!"  # command to run when activity is detected after timeout has fired.
    }

    # Screenlock
    listener {
        timeout = 70                     # 10 min
        on-timeout = loginctl lock-session # command to run when timeout has passed
        # on-resume = notify-send "Welcome back to your desktop!"  # command to run when activity is detected after timeout has fired.
    }

    # Turn off screen
    # (disabled by default)
     listener {
         timeout = 120                            # 10.5 min
         on-timeout = hyprctl dispatch dpms off  # command to run when timeout has passed
         on-resume = hyprctl dispatch dpms on    # command to run when activity is detected after timeout has fired.
     }

    # Suspend # disabled by default
    # listener {
       # timeout = 1200                            # 20 min
       # on-timeout = systemctl suspend # command to run when timeout has passed
        # on-resume = notify-send "Welcome back to your desktop!"  # command to run when activity is detected after timeout has fired.
    # }
  '';
  #   + (
  #     lib.optionalString (osConfig.networking.hostName == "xps") ''
  #       listener {
  #           timeout = 3660
  #           on-timeout =  systemctl suspend
  #       }
  #     ''
  #   );
}
