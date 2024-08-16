#
# KDE Home-Manager Configuration
#
# Get the plasma configs in a file with $ nix run github:pjones/plasma-manager > <file>
#
{inputs, ...}: {
  imports = [inputs.plasma-manager.homeManagerModules.plasma-manager];

  programs.plasma = {
    enable = true;
    shortcuts = {
      "ActivityManager"."switch-to-activity-b3473825-69a4-4434-a8c7-732f4163cad1" = [];
      "KDE Keyboard Layout Switcher"."Switch to Last-Used Keyboard Layout" = "Meta+Alt+L";
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Meta+Alt+K";
      "kaccess"."Toggle Screen Reader On and Off" = "Meta+Alt+S";
      "kcm_touchpad"."Disable Touchpad" = "Touchpad Off";
      "kcm_touchpad"."Enable Touchpad" = "Touchpad On";
      "kcm_touchpad"."Toggle Touchpad" = ["Touchpad Toggle" "Meta+Ctrl+Zenkaku Hankaku,Touchpad Toggle" "Meta+Ctrl+Zenkaku Hankaku"];
      "kmix"."decrease_microphone_volume" = "Microphone Volume Down";
      "kmix"."decrease_volume" = "Volume Down";
      "kmix"."decrease_volume_small" = "Shift+Volume Down";
      "kmix"."increase_microphone_volume" = "Microphone Volume Up";
      "kmix"."increase_volume" = "Volume Up";
      "kmix"."increase_volume_small" = "Shift+Volume Up";
      "kmix"."mic_mute" = ["Microphone Mute" "Meta+Volume Mute,Microphone Mute" "Meta+Volume Mute,Mute Microphone"];
      "kmix"."mute" = "Volume Mute";
      "ksmserver"."Halt Without Confirmation" = [];
      "ksmserver"."Lock Session" = ["Meta+L" "Screensaver,Meta+L" "Screensaver,Lock Session"];
      "ksmserver"."Log Out" = "Ctrl+Alt+Del";
      "ksmserver"."Log Out Without Confirmation" = [];
      "ksmserver"."Reboot" = [];
      "ksmserver"."Reboot Without Confirmation" = [];
      "ksmserver"."Shut Down" = [];
      "kwin"."Activate Window Demanding Attention" = "Meta+Ctrl+A";
      "kwin"."Cycle Overview" = [];
      "kwin"."Cycle Overview Opposite" = [];
      "kwin"."Decrease Opacity" = [];
      "kwin"."Edit Tiles" = "Meta+T";
      "kwin"."Expose" = "Ctrl+F9";
      "kwin"."ExposeAll" = ["Ctrl+F10" "Launch (C),Ctrl+F10" "Launch (C),Toggle Present Windows (All desktops)"];
      "kwin"."ExposeClass" = "Ctrl+F7";
      "kwin"."ExposeClassCurrentDesktop" = [];
      "kwin"."Grid View" = "Meta+G";
      "kwin"."Increase Opacity" = [];
      "kwin"."Kill Window" = "Meta+Ctrl+Esc";
      "kwin"."Move Tablet to Next Output" = [];
      "kwin"."MoveMouseToCenter" = "Meta+F6";
      "kwin"."MoveMouseToFocus" = "Meta+F5";
      "kwin"."MoveZoomDown" = [];
      "kwin"."MoveZoomLeft" = [];
      "kwin"."MoveZoomRight" = [];
      "kwin"."MoveZoomUp" = [];
      "kwin"."Overview" = "Meta+W";
      "kwin"."Setup Window Shortcut" = [];
      "kwin"."Show Desktop" = "Meta+D";
      "kwin"."Switch One Desktop Down" = "Meta+Ctrl+Down";
      "kwin"."Switch One Desktop Up" = "Meta+Ctrl+Up";
      "kwin"."Switch One Desktop to the Left" = "Meta+Ctrl+Left";
      "kwin"."Switch One Desktop to the Right" = "Meta+Ctrl+Right";
      "kwin"."Switch Window Down" = "Meta+Alt+Down";
      "kwin"."Switch Window Left" = "Meta+Alt+Left";
      "kwin"."Switch Window Right" = "Meta+Alt+Right";
      "kwin"."Switch Window Up" = "Meta+Alt+Up";
      "kwin"."Switch to Desktop 1" = "Ctrl+F1";
      "kwin"."Switch to Desktop 10" = [];
      "kwin"."Switch to Desktop 11" = [];
      "kwin"."Switch to Desktop 12" = [];
      "kwin"."Switch to Desktop 13" = [];
      "kwin"."Switch to Desktop 14" = [];
      "kwin"."Switch to Desktop 15" = [];
      "kwin"."Switch to Desktop 16" = [];
      "kwin"."Switch to Desktop 17" = [];
      "kwin"."Switch to Desktop 18" = [];
      "kwin"."Switch to Desktop 19" = [];
      "kwin"."Switch to Desktop 2" = "Ctrl+F2";
      "kwin"."Switch to Desktop 20" = [];
      "kwin"."Switch to Desktop 3" = "Ctrl+F3";
      "kwin"."Switch to Desktop 4" = "Ctrl+F4";
      "kwin"."Switch to Desktop 5" = [];
      "kwin"."Switch to Desktop 6" = [];
      "kwin"."Switch to Desktop 7" = [];
      "kwin"."Switch to Desktop 8" = [];
      "kwin"."Switch to Desktop 9" = [];
      "kwin"."Switch to Next Desktop" = [];
      "kwin"."Switch to Next Screen" = [];
      "kwin"."Switch to Previous Desktop" = [];
      "kwin"."Switch to Previous Screen" = [];
      "kwin"."Switch to Screen 0" = [];
      "kwin"."Switch to Screen 1" = [];
      "kwin"."Switch to Screen 2" = [];
      "kwin"."Switch to Screen 3" = [];
      "kwin"."Switch to Screen 4" = [];
      "kwin"."Switch to Screen 5" = [];
      "kwin"."Switch to Screen 6" = [];
      "kwin"."Switch to Screen 7" = [];
      "kwin"."Switch to Screen Above" = [];
      "kwin"."Switch to Screen Below" = [];
      "kwin"."Switch to Screen to the Left" = [];
      "kwin"."Switch to Screen to the Right" = [];
      "kwin"."Toggle Night Color" = [];
      "kwin"."Toggle Window Raise/Lower" = [];
      "kwin"."Walk Through Windows" = "Alt+Tab";
      "kwin"."Walk Through Windows (Reverse)" = "Alt+Shift+Tab";
      "kwin"."Walk Through Windows Alternative" = [];
      "kwin"."Walk Through Windows Alternative (Reverse)" = [];
      "kwin"."Walk Through Windows of Current Application" = "Alt+`";
      "kwin"."Walk Through Windows of Current Application (Reverse)" = "Alt+~";
      "kwin"."Walk Through Windows of Current Application Alternative" = [];
      "kwin"."Walk Through Windows of Current Application Alternative (Reverse)" = [];
      "kwin"."Window Above Other Windows" = [];
      "kwin"."Window Below Other Windows" = [];
      "kwin"."Window Close" = "Meta+Q,Alt+F4,Close Window";
      "kwin"."Window Fullscreen" = [];
      "kwin"."Window Grow Horizontal" = [];
      "kwin"."Window Grow Vertical" = [];
      "kwin"."Window Lower" = [];
      "kwin"."Window Maximize" = "Meta+Up,Meta+PgUp,Maximize Window";
      "kwin"."Window Maximize Horizontal" = [];
      "kwin"."Window Maximize Vertical" = [];
      "kwin"."Window Minimize" = "Meta+PgDown";
      "kwin"."Window Move" = [];
      "kwin"."Window Move Center" = [];
      "kwin"."Window No Border" = [];
      "kwin"."Window On All Desktops" = [];
      "kwin"."Window One Desktop Down" = "Meta+Ctrl+Shift+Down";
      "kwin"."Window One Desktop Up" = "Meta+Ctrl+Shift+Up";
      "kwin"."Window One Desktop to the Left" = "Meta+Ctrl+Shift+Left";
      "kwin"."Window One Desktop to the Right" = "Meta+Ctrl+Shift+Right";
      "kwin"."Window One Screen Down" = [];
      "kwin"."Window One Screen Up" = [];
      "kwin"."Window One Screen to the Left" = [];
      "kwin"."Window One Screen to the Right" = [];
      "kwin"."Window Operations Menu" = "Alt+F3";
      "kwin"."Window Pack Down" = [];
      "kwin"."Window Pack Left" = [];
      "kwin"."Window Pack Right" = [];
      "kwin"."Window Pack Up" = [];
      "kwin"."Window Quick Tile Bottom" = "Meta+Down";
      "kwin"."Window Quick Tile Bottom Left" = [];
      "kwin"."Window Quick Tile Bottom Right" = [];
      "kwin"."Window Quick Tile Left" = "Meta+Left";
      "kwin"."Window Quick Tile Right" = "Meta+Right";
      "kwin"."Window Quick Tile Top" = "Meta+PgUp,Meta+Up,Quick Tile Window to the Top";
      "kwin"."Window Quick Tile Top Left" = [];
      "kwin"."Window Quick Tile Top Right" = [];
      "kwin"."Window Raise" = [];
      "kwin"."Window Resize" = [];
      "kwin"."Window Shade" = [];
      "kwin"."Window Shrink Horizontal" = [];
      "kwin"."Window Shrink Vertical" = [];
      "kwin"."Window to Desktop 1" = [];
      "kwin"."Window to Desktop 10" = [];
      "kwin"."Window to Desktop 11" = [];
      "kwin"."Window to Desktop 12" = [];
      "kwin"."Window to Desktop 13" = [];
      "kwin"."Window to Desktop 14" = [];
      "kwin"."Window to Desktop 15" = [];
      "kwin"."Window to Desktop 16" = [];
      "kwin"."Window to Desktop 17" = [];
      "kwin"."Window to Desktop 18" = [];
      "kwin"."Window to Desktop 19" = [];
      "kwin"."Window to Desktop 2" = [];
      "kwin"."Window to Desktop 20" = [];
      "kwin"."Window to Desktop 3" = [];
      "kwin"."Window to Desktop 4" = [];
      "kwin"."Window to Desktop 5" = [];
      "kwin"."Window to Desktop 6" = [];
      "kwin"."Window to Desktop 7" = [];
      "kwin"."Window to Desktop 8" = [];
      "kwin"."Window to Desktop 9" = [];
      "kwin"."Window to Next Desktop" = [];
      "kwin"."Window to Next Screen" = "Meta+Shift+Right";
      "kwin"."Window to Previous Desktop" = [];
      "kwin"."Window to Previous Screen" = "Meta+Shift+Left";
      "kwin"."Window to Screen 0" = [];
      "kwin"."Window to Screen 1" = [];
      "kwin"."Window to Screen 2" = [];
      "kwin"."Window to Screen 3" = [];
      "kwin"."Window to Screen 4" = [];
      "kwin"."Window to Screen 5" = [];
      "kwin"."Window to Screen 6" = [];
      "kwin"."Window to Screen 7" = [];
      "kwin"."view_actual_size" = "Meta+0";
      "kwin"."view_zoom_in" = ["Meta++" "Meta+=,Meta++" "Meta+=,Zoom In"];
      "kwin"."view_zoom_out" = "Meta+-";
      "mediacontrol"."mediavolumedown" = [];
      "mediacontrol"."mediavolumeup" = [];
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = [];
      "mediacontrol"."playpausemedia" = "Media Play";
      "mediacontrol"."previousmedia" = "Media Previous";
      "mediacontrol"."stopmedia" = "Media Stop";
      "org_kde_powerdevil"."Decrease Keyboard Brightness" = "Keyboard Brightness Down";
      "org_kde_powerdevil"."Decrease Screen Brightness" = "Monitor Brightness Down";
      "org_kde_powerdevil"."Decrease Screen Brightness Small" = "Shift+Monitor Brightness Down";
      "org_kde_powerdevil"."Hibernate" = "Hibernate";
      "org_kde_powerdevil"."Increase Keyboard Brightness" = "Keyboard Brightness Up";
      "org_kde_powerdevil"."Increase Screen Brightness" = "Monitor Brightness Up";
      "org_kde_powerdevil"."Increase Screen Brightness Small" = "Shift+Monitor Brightness Up";
      "org_kde_powerdevil"."PowerDown" = "Power Down";
      "org_kde_powerdevil"."PowerOff" = "Power Off";
      "org_kde_powerdevil"."Sleep" = "Sleep";
      "org_kde_powerdevil"."Toggle Keyboard Backlight" = "Keyboard Light On/Off";
      "org_kde_powerdevil"."Turn Off Screen" = [];
      "org_kde_powerdevil"."powerProfile" = ["Battery" "Meta+B,Battery" "Meta+B,Switch Power Profile"];
      "plasmashell"."activate task manager entry 1" = "Meta+1";
      "plasmashell"."activate task manager entry 10" = ",Meta+0,Activate Task Manager Entry 10";
      "plasmashell"."activate task manager entry 2" = "Meta+2";
      "plasmashell"."activate task manager entry 3" = "Meta+3";
      "plasmashell"."activate task manager entry 4" = "Meta+4";
      "plasmashell"."activate task manager entry 5" = "Meta+5";
      "plasmashell"."activate task manager entry 6" = "Meta+6";
      "plasmashell"."activate task manager entry 7" = "Meta+7";
      "plasmashell"."activate task manager entry 8" = "Meta+8";
      "plasmashell"."activate task manager entry 9" = "Meta+9";
      "plasmashell"."clear-history" = [];
      "plasmashell"."clipboard_action" = "Meta+Ctrl+X";
      "plasmashell"."cycle-panels" = "Meta+Alt+P";
      "plasmashell"."cycleNextAction" = [];
      "plasmashell"."cyclePrevAction" = [];
      "plasmashell"."manage activities" = "none,Meta+Q,Show Activity Switcher";
      "plasmashell"."next activity" = "Meta+A,none,Walk through activities";
      "plasmashell"."previous activity" = "Meta+Shift+A,none,Walk through activities (Reverse)";
      "plasmashell"."repeat_action" = "Meta+Ctrl+R";
      "plasmashell"."show dashboard" = "Ctrl+F12";
      "plasmashell"."show-barcode" = [];
      "plasmashell"."show-on-mouse-pos" = "Meta+V";
      "plasmashell"."stop current activity" = "Meta+S";
      "plasmashell"."switch to next activity" = [];
      "plasmashell"."switch to previous activity" = [];
      "plasmashell"."toggle do not disturb" = [];
      "services/kitty.desktop"."_launch" = "Meta+Return";
      "services/org.kde.spectacle.desktop"."RecordWindow" = [];
      "services/rofi-launcher.desktop"."_launch" = "Meta+Shift+Return";
    };
    configFile = {
      "baloofilerc"."General"."dbVersion" = 2;
      "baloofilerc"."General"."exclude filters" = "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      "baloofilerc"."General"."exclude filters version" = 9;
      "dolphinrc"."General"."ViewPropsTimestamp" = "2024,7,19,9,54,2.968";
      "dolphinrc"."KFileDialog Settings"."Places Icons Auto-resize" = false;
      "dolphinrc"."KFileDialog Settings"."Places Icons Static Size" = 22;
      "kactivitymanagerdrc"."activities"."b3473825-69a4-4434-a8c7-732f4163cad1" = "Default";
      "kactivitymanagerdrc"."main"."currentActivity" = "b3473825-69a4-4434-a8c7-732f4163cad1";
      "kcminputrc"."Libinput/10182/480/GXT7863:00 27C6:01E0 Touchpad"."NaturalScroll" = true;
      "kded5rc"."Module-browserintegrationreminder"."autoload" = false;
      "kded5rc"."Module-device_automounter"."autoload" = false;
      "kdeglobals"."General"."Name" = "Stylix";
      "kdeglobals"."WM"."activeBackground" = "17,28,46";
      "kdeglobals"."WM"."activeBlend" = "80,147,226";
      "kdeglobals"."WM"."activeForeground" = "165,238,245";
      "kdeglobals"."WM"."inactiveBackground" = "17,28,46";
      "kdeglobals"."WM"."inactiveBlend" = "71,167,218";
      "kdeglobals"."WM"."inactiveForeground" = "165,238,245";
      "kiorc"."Confirmations"."ConfirmDelete" = true;
      "kwalletrc"."Wallet"."First Use" = false;
      "kwinrc"."Desktops"."Id_1" = "93c73a34-eae9-4fa4-a4d2-1f38f3e0a484";
      "kwinrc"."Desktops"."Id_2" = "640c467b-cbbe-41d9-8eb3-aa0519e00668";
      "kwinrc"."Desktops"."Id_3" = "7f99514e-815c-40d3-9d54-7e8002ab2fc5";
      "kwinrc"."Desktops"."Id_4" = "77220dc6-e625-44c4-bcdf-c80e02de8b18";
      "kwinrc"."Desktops"."Id_5" = "69dcee7e-f36b-4ed1-b393-f3e0875f46e0";
      "kwinrc"."Desktops"."Id_6" = "b9809580-44c4-4a90-84e4-0d9188593609";
      "kwinrc"."Desktops"."Number" = 6;
      "kwinrc"."Desktops"."Rows" = 2;
      "kwinrc"."NightColor"."Active" = true;
      "kwinrc"."NightColor"."Mode" = "Times";
      "kwinrc"."Tiling"."padding" = 4;
      "kwinrc"."Tiling/3a20f290-6f51-56d6-bcf3-f260d1d72443"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":\x5b{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}\x5d}";
      "kwinrc"."Windows"."DelayFocusInterval" = 1;
      "kwinrc"."Windows"."FocusPolicy" = "FocusFollowsMouse";
      "kwinrc"."Windows"."Placement" = "Maximizing";
      "kwinrc"."Xwayland"."Scale" = 1.25;
      "plasma-localerc"."Formats"."LANG" = "en_US.UTF-8";
      "plasmanotifyrc"."Applications/firefox"."Seen" = true;
      "plasmanotifyrc"."Applications/org.telegram.desktop"."Seen" = true;
    };
  };
}
