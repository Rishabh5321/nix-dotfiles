{pkgs, ...}: let
  battery-watch = pkgs.writeShellScriptBin "battery-watch" ''
    while true;do
      battery-plugged &
      battery-level &
      sleep 60
    done
  '';

  battery-plugged = pkgs.writeShellScriptBin "battery-plugged" ''
    BATTERY_STATUS=$(cat /sys/class/power_supply/BAT*/status | head -n1)
    OLD_BATTERY_STATUS=$(cat /tmp/old_battery_status 2>/dev/null || echo "Unknown")
    if [[ $BATTERY_STATUS != $OLD_BATTERY_STATUS && $OLD_BATTERY_STATUS != "Unknown" ]]; then
      if [[ $BATTERY_STATUS == "Discharging" ]]; then
        notif "battery" "󰚦 Battery is unplugged"
      else
        notif "battery" "󰚥 Battery is plugged in"
      fi
    fi
    echo $BATTERY_STATUS > /tmp/old_battery_status
  '';

  battery-level = pkgs.writeShellScriptBin "battery-level" ''
    BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT*/capacity | head -n1)
    BATTERY_STATUS=$(cat /sys/class/power_supply/BAT*/status | head -n1)
    if [[ $BATTERY_LEVEL -le 20 ]] && [[ $BATTERY_STATUS == "Discharging" ]]; then
      notif "battery" "󰁻  Low battery" "Battery level is $BATTERY_LEVEL%"
    elif [[ $BATTERY_LEVEL -le 10 ]] && [[ $BATTERY_STATUS == "Discharging" ]]; then
      notif "battery" "󰁺  Very low battery" "Battery level is $BATTERY_LEVEL%"
    # elif [[ $BATTERY_LEVEL -eq 100 ]] && [[ $BATTERY_STATUS -ne "Discharging" ]]; then
    #   notif "battery" "󰁹 Fully charged"
    fi
  '';
in {home.packages = [battery-watch battery-plugged battery-level];}
