#
# KDE Home-Manager Configuration
#
# Get the plasma configs in a file with $ nix run github:pjones/plasma-manager > <file>
#
{ inputs, ... }: {
  imports = [ inputs.plasma-manager.homeManagerModules.plasma-manager ];

  programs.plasma = {
    enable = true;
    shortcuts = {
      "ActivityManager"."switch-to-activity-b3473825-69a4-4434-a8c7-732f4163cad1" = [ ];
      "ActivityManager"."switch-to-activity-c7bafcf1-9719-4f3e-b804-6d748aaa2d37" = [ ];
      "KDE Keyboard Layout Switcher"."Switch to Last-Used Keyboard Layout" = "Meta+Alt+L";
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Meta+Alt+K";
      "kaccess"."Toggle Screen Reader On and Off" = "Meta+Alt+S";
      "kcm_touchpad"."Disable Touchpad" = "Touchpad Off";
      "kcm_touchpad"."Enable Touchpad" = "Touchpad On";
      "kcm_touchpad"."Toggle Touchpad" = [
        "Touchpad Toggle"
        "Meta+Ctrl+Zenkaku Hankaku,Touchpad Toggle"
        "Meta+Ctrl+Zenkaku Hankaku"
      ];
      "kmix"."decrease_microphone_volume" = "Microphone Volume Down";
      "kmix"."decrease_volume" = "Volume Down";
      "kmix"."decrease_volume_small" = "Shift+Volume Down";
      "kmix"."increase_microphone_volume" = "Microphone Volume Up";
      "kmix"."increase_volume" = "Volume Up";
      "kmix"."increase_volume_small" = "Shift+Volume Up";
      "kmix"."mic_mute" = [
        "Microphone Mute"
        "Meta+Volume Mute,Microphone Mute"
        "Meta+Volume Mute,Mute Microphone"
      ];
      "kmix"."mute" = "Volume Mute";
      "ksmserver"."Halt Without Confirmation" = "none,,Shut Down Without Confirmation";
      "ksmserver"."Lock Session" = [
        "Meta+L"
        "Screensaver,Meta+L"
        "Screensaver,Lock Session"
      ];
      "ksmserver"."Log Out" = "Ctrl+Alt+Del";
      "ksmserver"."Log Out Without Confirmation" = "none,,Log Out Without Confirmation";
      "ksmserver"."LogOut" = "none,,Log Out";
      "ksmserver"."Reboot" = "none,,Reboot";
      "ksmserver"."Reboot Without Confirmation" = "none,,Reboot Without Confirmation";
      "ksmserver"."Shut Down" = "none,,Shut Down";
      "kwin"."Activate Window Demanding Attention" = "Meta+Ctrl+A";
      "kwin"."Cycle Overview" = [ ];
      "kwin"."Cycle Overview Opposite" = [ ];
      "kwin"."Decrease Opacity" = "none,,Decrease Opacity of Active Window by 5%";
      "kwin"."Edit Tiles" = "Meta+T";
      "kwin"."Expose" = "Ctrl+F9";
      "kwin"."ExposeAll" = [
        "Ctrl+F10"
        "Launch (C),Ctrl+F10"
        "Launch (C),Toggle Present Windows (All desktops)"
      ];
      "kwin"."ExposeClass" = "Ctrl+F7";
      "kwin"."ExposeClassCurrentDesktop" = [ ];
      "kwin"."Grid View" = "Meta+G";
      "kwin"."Increase Opacity" = "none,,Increase Opacity of Active Window by 5%";
      "kwin"."Kill Window" = "Meta+Ctrl+Esc";
      "kwin"."KrohnkiteBTreeLayout" = [ ];
      "kwin"."KrohnkiteDecrease" = [ ];
      "kwin"."KrohnkiteFloatAll" = "Meta+Shift+F,none,Krohnkite: Float All";
      "kwin"."KrohnkiteFloatingLayout" = [ ];
      "kwin"."KrohnkiteFocusDown" = "Meta+J,none,Krohnkite: Focus Down";
      "kwin"."KrohnkiteFocusLeft" = "Meta+H,none,Krohnkite: Focus Left";
      "kwin"."KrohnkiteFocusNext" = [ ];
      "kwin"."KrohnkiteFocusPrev" = "Meta+\\,,none,Krohnkite: Focus Previous";
      "kwin"."KrohnkiteFocusRight" = [ ];
      "kwin"."KrohnkiteFocusUp" = "Meta+K,none,Krohnkite: Focus Up";
      "kwin"."KrohnkiteGrowHeight" = "Meta+Ctrl+J,none,Krohnkite: Grow Height";
      "kwin"."KrohnkiteIncrease" = "Meta+I,none,Krohnkite: Increase";
      "kwin"."KrohnkiteMonocleLayout" = "Meta+M,none,Krohnkite: Monocle Layout";
      "kwin"."KrohnkiteNextLayout" = "Meta+\\\\,none,Krohnkite: Next Layout";
      "kwin"."KrohnkitePreviousLayout" = "Meta+|,none,Krohnkite: Previous Layout";
      "kwin"."KrohnkiteQuarterLayout" = [ ];
      "kwin"."KrohnkiteRotate" = [ ];
      "kwin"."KrohnkiteRotatePart" = [ ];
      "kwin"."KrohnkiteSetMaster" = [ ];
      "kwin"."KrohnkiteShiftDown" = "Meta+Shift+J,none,Krohnkite: Move Down/Next";
      "kwin"."KrohnkiteShiftLeft" = "Meta+Shift+H,none,Krohnkite: Move Left";
      "kwin"."KrohnkiteShiftRight" = "Meta+Shift+L,none,Krohnkite: Move Right";
      "kwin"."KrohnkiteShiftUp" = "Meta+Shift+K,none,Krohnkite: Move Up/Prev";
      "kwin"."KrohnkiteShrinkHeight" = "Meta+Ctrl+K,none,Krohnkite: Shrink Height";
      "kwin"."KrohnkiteShrinkWidth" = "Meta+Ctrl+H,none,Krohnkite: Shrink Width";
      "kwin"."KrohnkiteSpiralLayout" = [ ];
      "kwin"."KrohnkiteSpreadLayout" = [ ];
      "kwin"."KrohnkiteStackedLayout" = [ ];
      "kwin"."KrohnkiteStairLayout" = [ ];
      "kwin"."KrohnkiteTileLayout" = [ ];
      "kwin"."KrohnkiteToggleFloat" = "Meta+F,none,Krohnkite: Toggle Float";
      "kwin"."KrohnkiteTreeColumnLayout" = [ ];
      "kwin"."KrohnkitegrowWidth" = "Meta+Ctrl+L,none,Krohnkite: Grow Width";
      "kwin"."Move Tablet to Next Output" = [ ];
      "kwin"."MoveMouseToCenter" = "Meta+F6";
      "kwin"."MoveMouseToFocus" = "Meta+F5";
      "kwin"."MoveZoomDown" = [ ];
      "kwin"."MoveZoomLeft" = [ ];
      "kwin"."MoveZoomRight" = [ ];
      "kwin"."MoveZoomUp" = [ ];
      "kwin"."Overview" = "Meta+W";
      "kwin"."PoloniumCycleEngine" = [ ];
      "kwin"."PoloniumFocusAbove" = [ ];
      "kwin"."PoloniumFocusBelow" = [ ];
      "kwin"."PoloniumFocusLeft" = [ ];
      "kwin"."PoloniumFocusRight" = [ ];
      "kwin"."PoloniumInsertAbove" = [ ];
      "kwin"."PoloniumInsertBelow" = [ ];
      "kwin"."PoloniumInsertLeft" = [ ];
      "kwin"."PoloniumInsertRight" = [ ];
      "kwin"."PoloniumOpenSettings" = [ ];
      "kwin"."PoloniumResizeAbove" = [ ];
      "kwin"."PoloniumResizeBelow" = [ ];
      "kwin"."PoloniumResizeLeft" = [ ];
      "kwin"."PoloniumResizeRight" = [ ];
      "kwin"."PoloniumRetileWindow" = "Meta+Shift+Space,none,Polonium: Retile Window";
      "kwin"."PoloniumSwitchBTree" = [ ];
      "kwin"."PoloniumSwitchHalf" = [ ];
      "kwin"."PoloniumSwitchKwin" = [ ];
      "kwin"."PoloniumSwitchMonocle" = [ ];
      "kwin"."PoloniumSwitchThreeColumn" = [ ];
      "kwin"."Setup Window Shortcut" = "none,,Setup Window Shortcut";
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
      "kwin"."Switch to Desktop 10" = "none,,Switch to Desktop 10";
      "kwin"."Switch to Desktop 11" = "none,,Switch to Desktop 11";
      "kwin"."Switch to Desktop 12" = "none,,Switch to Desktop 12";
      "kwin"."Switch to Desktop 13" = "none,,Switch to Desktop 13";
      "kwin"."Switch to Desktop 14" = "none,,Switch to Desktop 14";
      "kwin"."Switch to Desktop 15" = "none,,Switch to Desktop 15";
      "kwin"."Switch to Desktop 16" = "none,,Switch to Desktop 16";
      "kwin"."Switch to Desktop 17" = "none,,Switch to Desktop 17";
      "kwin"."Switch to Desktop 18" = "none,,Switch to Desktop 18";
      "kwin"."Switch to Desktop 19" = "none,,Switch to Desktop 19";
      "kwin"."Switch to Desktop 2" = "Ctrl+F2";
      "kwin"."Switch to Desktop 20" = "none,,Switch to Desktop 20";
      "kwin"."Switch to Desktop 3" = "Ctrl+F3";
      "kwin"."Switch to Desktop 4" = "Ctrl+F4";
      "kwin"."Switch to Desktop 5" = "none,,Switch to Desktop 5";
      "kwin"."Switch to Desktop 6" = "none,,Switch to Desktop 6";
      "kwin"."Switch to Desktop 7" = "none,,Switch to Desktop 7";
      "kwin"."Switch to Desktop 8" = "none,,Switch to Desktop 8";
      "kwin"."Switch to Desktop 9" = "none,,Switch to Desktop 9";
      "kwin"."Switch to Next Desktop" = "none,,Switch to Next Desktop";
      "kwin"."Switch to Next Screen" = "none,,Switch to Next Screen";
      "kwin"."Switch to Previous Desktop" = "none,,Switch to Previous Desktop";
      "kwin"."Switch to Previous Screen" = "none,,Switch to Previous Screen";
      "kwin"."Switch to Screen 0" = "none,,Switch to Screen 0";
      "kwin"."Switch to Screen 1" = "none,,Switch to Screen 1";
      "kwin"."Switch to Screen 2" = "none,,Switch to Screen 2";
      "kwin"."Switch to Screen 3" = "none,,Switch to Screen 3";
      "kwin"."Switch to Screen 4" = "none,,Switch to Screen 4";
      "kwin"."Switch to Screen 5" = "none,,Switch to Screen 5";
      "kwin"."Switch to Screen 6" = "none,,Switch to Screen 6";
      "kwin"."Switch to Screen 7" = "none,,Switch to Screen 7";
      "kwin"."Switch to Screen Above" = "none,,Switch to Screen Above";
      "kwin"."Switch to Screen Below" = "none,,Switch to Screen Below";
      "kwin"."Switch to Screen to the Left" = "none,,Switch to Screen to the Left";
      "kwin"."Switch to Screen to the Right" = "none,,Switch to Screen to the Right";
      "kwin"."Toggle Night Color" = [ ];
      "kwin"."Toggle Window Raise/Lower" = "none,,Toggle Window Raise/Lower";
      "kwin"."Walk Through Windows" = "Alt+Tab";
      "kwin"."Walk Through Windows (Reverse)" = "Alt+Shift+Tab";
      "kwin"."Walk Through Windows Alternative" = "none,,Walk Through Windows Alternative";
      "kwin"."Walk Through Windows Alternative (Reverse)" = "none,,Walk Through Windows Alternative (Reverse)";
      "kwin"."Walk Through Windows of Current Application" = "Alt+`";
      "kwin"."Walk Through Windows of Current Application (Reverse)" = "Alt+~";
      "kwin"."Walk Through Windows of Current Application Alternative" = "none,,Walk Through Windows of Current Application Alternative";
      "kwin"."Walk Through Windows of Current Application Alternative (Reverse)" = "none,,Walk Through Windows of Current Application Alternative (Reverse)";
      "kwin"."Window Above Other Windows" = "none,,Keep Window Above Others";
      "kwin"."Window Below Other Windows" = "none,,Keep Window Below Others";
      "kwin"."Window Close" = [
        "Meta+Q"
        "Alt+F4,Alt+F4,Close Window"
      ];
      "kwin"."Window Fullscreen" = "none,,Make Window Fullscreen";
      "kwin"."Window Grow Horizontal" = "none,,Expand Window Horizontally";
      "kwin"."Window Grow Vertical" = "none,,Expand Window Vertically";
      "kwin"."Window Lower" = "none,,Lower Window";
      "kwin"."Window Maximize" = [
        "Meta+Up"
        "Meta+PgUp\\, Meta+PgUp,Meta+PgUp,Maximize Window"
      ];
      "kwin"."Window Maximize Horizontal" = "none,,Maximize Window Horizontally";
      "kwin"."Window Maximize Vertical" = "none,,Maximize Window Vertically";
      "kwin"."Window Minimize" = "Meta+PgDown";
      "kwin"."Window Move" = "none,,Move Window";
      "kwin"."Window Move Center" = "none,,Move Window to the Center";
      "kwin"."Window No Border" = "none,,Toggle Window Titlebar and Frame";
      "kwin"."Window On All Desktops" = "none,,Keep Window on All Desktops";
      "kwin"."Window One Desktop Down" = "Meta+Ctrl+Shift+Down";
      "kwin"."Window One Desktop Up" = "Meta+Ctrl+Shift+Up";
      "kwin"."Window One Desktop to the Left" = "Meta+Ctrl+Shift+Left";
      "kwin"."Window One Desktop to the Right" = "Meta+Ctrl+Shift+Right";
      "kwin"."Window One Screen Down" = "none,,Move Window One Screen Down";
      "kwin"."Window One Screen Up" = "none,,Move Window One Screen Up";
      "kwin"."Window One Screen to the Left" = "none,,Move Window One Screen to the Left";
      "kwin"."Window One Screen to the Right" = "none,,Move Window One Screen to the Right";
      "kwin"."Window Operations Menu" = "Alt+F3";
      "kwin"."Window Pack Down" = "none,,Move Window Down";
      "kwin"."Window Pack Left" = "none,,Move Window Left";
      "kwin"."Window Pack Right" = "none,,Move Window Right";
      "kwin"."Window Pack Up" = "none,,Move Window Up";
      "kwin"."Window Quick Tile Bottom" = "Meta+Down";
      "kwin"."Window Quick Tile Bottom Left" = "none,,Quick Tile Window to the Bottom Left";
      "kwin"."Window Quick Tile Bottom Right" = "none,,Quick Tile Window to the Bottom Right";
      "kwin"."Window Quick Tile Left" = "Meta+Left";
      "kwin"."Window Quick Tile Right" = "Meta+Right";
      "kwin"."Window Quick Tile Top" = "none,Meta+Up,Quick Tile Window to the Top";
      "kwin"."Window Quick Tile Top Left" = "none,,Quick Tile Window to the Top Left";
      "kwin"."Window Quick Tile Top Right" = "none,,Quick Tile Window to the Top Right";
      "kwin"."Window Raise" = "none,,Raise Window";
      "kwin"."Window Resize" = "none,,Resize Window";
      "kwin"."Window Shade" = "none,,Shade Window";
      "kwin"."Window Shrink Horizontal" = "none,,Shrink Window Horizontally";
      "kwin"."Window Shrink Vertical" = "none,,Shrink Window Vertically";
      "kwin"."Window to Desktop 1" = "none,,Window to Desktop 1";
      "kwin"."Window to Desktop 10" = "none,,Window to Desktop 10";
      "kwin"."Window to Desktop 11" = "none,,Window to Desktop 11";
      "kwin"."Window to Desktop 12" = "none,,Window to Desktop 12";
      "kwin"."Window to Desktop 13" = "none,,Window to Desktop 13";
      "kwin"."Window to Desktop 14" = "none,,Window to Desktop 14";
      "kwin"."Window to Desktop 15" = "none,,Window to Desktop 15";
      "kwin"."Window to Desktop 16" = "none,,Window to Desktop 16";
      "kwin"."Window to Desktop 17" = "none,,Window to Desktop 17";
      "kwin"."Window to Desktop 18" = "none,,Window to Desktop 18";
      "kwin"."Window to Desktop 19" = "none,,Window to Desktop 19";
      "kwin"."Window to Desktop 2" = "none,,Window to Desktop 2";
      "kwin"."Window to Desktop 20" = "none,,Window to Desktop 20";
      "kwin"."Window to Desktop 3" = "none,,Window to Desktop 3";
      "kwin"."Window to Desktop 4" = "none,,Window to Desktop 4";
      "kwin"."Window to Desktop 5" = "none,,Window to Desktop 5";
      "kwin"."Window to Desktop 6" = "none,,Window to Desktop 6";
      "kwin"."Window to Desktop 7" = "none,,Window to Desktop 7";
      "kwin"."Window to Desktop 8" = "none,,Window to Desktop 8";
      "kwin"."Window to Desktop 9" = "none,,Window to Desktop 9";
      "kwin"."Window to Next Desktop" = "none,,Window to Next Desktop";
      "kwin"."Window to Next Screen" = "Meta+Shift+Right";
      "kwin"."Window to Previous Desktop" = "none,,Window to Previous Desktop";
      "kwin"."Window to Previous Screen" = "Meta+Shift+Left";
      "kwin"."Window to Screen 0" = "none,,Move Window to Screen 0";
      "kwin"."Window to Screen 1" = "none,,Move Window to Screen 1";
      "kwin"."Window to Screen 2" = "none,,Move Window to Screen 2";
      "kwin"."Window to Screen 3" = "none,,Move Window to Screen 3";
      "kwin"."Window to Screen 4" = "none,,Move Window to Screen 4";
      "kwin"."Window to Screen 5" = "none,,Move Window to Screen 5";
      "kwin"."Window to Screen 6" = "none,,Move Window to Screen 6";
      "kwin"."Window to Screen 7" = "none,,Move Window to Screen 7";
      "kwin"."view_actual_size" = "none,Meta+0,Zoom to Actual Size";
      "kwin"."view_zoom_in" = [
        "Meta++"
        "Meta+=,Meta++"
        "Meta+=,Zoom In"
      ];
      "kwin"."view_zoom_out" = "Meta+-";
      "mediacontrol"."mediavolumedown" = "none,,Media volume down";
      "mediacontrol"."mediavolumeup" = "none,,Media volume up";
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = "none,,Play media playback";
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
      "org_kde_powerdevil"."Turn Off Screen" = [ ];
      "org_kde_powerdevil"."powerProfile" = [
        "Battery"
        "Meta+B,Battery"
        "Meta+B,Switch Power Profile"
      ];
      "plasmashell"."activate application launcher" = [
        "Meta"
        "Alt+F1,Meta"
        "Alt+F1,Activate Application Launcher"
      ];
      "plasmashell"."activate task manager entry 1" = "Meta+1";
      "plasmashell"."activate task manager entry 10" = "\\, Meta+0,Meta+0,Activate Task Manager Entry 10";
      "plasmashell"."activate task manager entry 2" = "Meta+2";
      "plasmashell"."activate task manager entry 3" = "Meta+3";
      "plasmashell"."activate task manager entry 4" = "Meta+4";
      "plasmashell"."activate task manager entry 5" = "Meta+5";
      "plasmashell"."activate task manager entry 6" = "Meta+6";
      "plasmashell"."activate task manager entry 7" = "Meta+7";
      "plasmashell"."activate task manager entry 8" = "Meta+8";
      "plasmashell"."activate task manager entry 9" = "Meta+9";
      "plasmashell"."clear-history" = "none,,Clear Clipboard History";
      "plasmashell"."clipboard_action" = "Meta+Ctrl+X";
      "plasmashell"."cycle-panels" = "Meta+Alt+P";
      "plasmashell"."cycleNextAction" = "none,,Next History Item";
      "plasmashell"."cyclePrevAction" = "none,,Previous History Item";
      "plasmashell"."manage activities" = "none,Meta+Q,Show Activity Switcher";
      "plasmashell"."next activity" = [ ];
      "plasmashell"."previous activity" = [ ];
      "plasmashell"."repeat_action" = "Meta+Ctrl+R";
      "plasmashell"."show dashboard" = "Ctrl+F12";
      "plasmashell"."show-barcode" = "none,,Show Barcode…";
      "plasmashell"."show-on-mouse-pos" = "Meta+V";
      "plasmashell"."stop current activity" = "\\, Meta+S,Meta+S,Stop Current Activity";
      "plasmashell"."switch to next activity" = "none,,Switch to Next Activity";
      "plasmashell"."switch to previous activity" = "none,,Switch to Previous Activity";
      "plasmashell"."toggle do not disturb" = "none,,Toggle do not disturb";
      "services/Alacritty.desktop"."_launch" = "Meta+Return";
      "services/org.kde.spectacle.desktop"."RecordWindow" = [ ];
      "services/rofi-launcher.desktop"."_launch" = "Meta+Shift+Return";
    };
    configFile = {
      "baloofilerc"."General"."dbVersion" = 2;
      "baloofilerc"."General"."exclude filters" = "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      "baloofilerc"."General"."exclude filters version" = 9;
      "dolphinrc"."General"."ViewPropsTimestamp" = "2024,8,20,11,43,2.863";
      "dolphinrc"."KFileDialog Settings"."Places Icons Auto-resize" = false;
      "dolphinrc"."KFileDialog Settings"."Places Icons Static Size" = 22;
      "kactivitymanagerdrc"."activities"."b3473825-69a4-4434-a8c7-732f4163cad1" = "Default";
      "kactivitymanagerdrc"."activities"."c7bafcf1-9719-4f3e-b804-6d748aaa2d37" = "Default";
      "kactivitymanagerdrc"."main"."currentActivity" = "b3473825-69a4-4434-a8c7-732f4163cad1";
      "kcminputrc"."Libinput/10182/480/GXT7863:00 27C6:01E0 Touchpad"."NaturalScroll" = true;
      "kcminputrc"."Mouse"."X11LibInputXAccelProfileFlat" = true;
      "kcminputrc"."Mouse"."cursorTheme" = "default";
      "kded5rc"."Module-browserintegrationreminder"."autoload" = false;
      "kded5rc"."Module-device_automounter"."autoload" = false;
      "kdeglobals"."DirSelect Dialog"."DirSelectDialog Size" = "870,592";
      "kdeglobals"."General"."Name" = "Stylix";
      "kdeglobals"."General"."XftHintStyle" = "hintslight";
      "kdeglobals"."General"."XftSubPixel" = "none";
      "kdeglobals"."General"."fixed" = "MesloLGS Nerd Font,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."font" = "MesloLGS Nerd Font,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."menuFont" = "MesloLGS Nerd Font,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."smallestReadableFont" = "MesloLGS Nerd Font,9,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."toolBarFont" = "MesloLGS Nerd Font,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."Icons"."Theme" = "Tela";
      "kdeglobals"."KDE"."AnimationDurationFactor" = 0.35355339059327373;
      "kdeglobals"."KFileDialog Settings"."Allow Expansion" = false;
      "kdeglobals"."KFileDialog Settings"."Automatically select filename extension" = true;
      "kdeglobals"."KFileDialog Settings"."Breadcrumb Navigation" = true;
      "kdeglobals"."KFileDialog Settings"."Decoration position" = 2;
      "kdeglobals"."KFileDialog Settings"."LocationCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."PathCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."Show Bookmarks" = false;
      "kdeglobals"."KFileDialog Settings"."Show Full Path" = false;
      "kdeglobals"."KFileDialog Settings"."Show Inline Previews" = true;
      "kdeglobals"."KFileDialog Settings"."Show Speedbar" = true;
      "kdeglobals"."KFileDialog Settings"."Show hidden files" = false;
      "kdeglobals"."KFileDialog Settings"."Sort by" = "Name";
      "kdeglobals"."KFileDialog Settings"."Sort directories first" = true;
      "kdeglobals"."KFileDialog Settings"."Sort hidden files last" = false;
      "kdeglobals"."KFileDialog Settings"."Sort reversed" = false;
      "kdeglobals"."KFileDialog Settings"."Speedbar Width" = 200;
      "kdeglobals"."KFileDialog Settings"."View Style" = "DetailTree";
      "kdeglobals"."WM"."activeBackground" = "17,28,46";
      "kdeglobals"."WM"."activeBlend" = "80,147,226";
      "kdeglobals"."WM"."activeFont" = "MesloLGS Nerd Font,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."WM"."activeForeground" = "165,238,245";
      "kdeglobals"."WM"."inactiveBackground" = "17,28,46";
      "kdeglobals"."WM"."inactiveBlend" = "71,167,218";
      "kdeglobals"."WM"."inactiveForeground" = "165,238,245";
      "kiorc"."Confirmations"."ConfirmDelete" = true;
      "kscreenlockerrc"."Daemon"."Timeout" = 1;
      "kscreenlockerrc"."Greeter/Wallpaper/org.kde.image/General"."Image" = "/nix/store/xr2373bly6n8bx4cshmkdy838m2wq620-stylix-kde-theme/share/wallpapers/stylix/";
      "kscreenlockerrc"."Greeter/Wallpaper/org.kde.image/General"."PreviewImage" = "/nix/store/xr2373bly6n8bx4cshmkdy838m2wq620-stylix-kde-theme/share/wallpapers/stylix/";
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
      "kwinrc"."Plugins"."krohnkiteEnabled" = false;
      "kwinrc"."Plugins"."poloniumEnabled" = true;
      "kwinrc"."Script-krohnkite"."enableMonocleLayout" = false;
      "kwinrc"."Script-krohnkite"."enableSpiralLayout" = false;
      "kwinrc"."Script-krohnkite"."enableSpreadLayout" = false;
      "kwinrc"."Script-krohnkite"."enableStairLayout" = false;
      "kwinrc"."Script-krohnkite"."enableThreeColumnLayout" = false;
      "kwinrc"."Script-krohnkite"."layoutPerActivity" = false;
      "kwinrc"."Script-krohnkite"."layoutPerDesktop" = false;
      "kwinrc"."Script-krohnkite"."monocleMaximize" = false;
      "kwinrc"."Script-krohnkite"."preventMinimize" = true;
      "kwinrc"."Script-krohnkite"."screenGapBottom" = 10;
      "kwinrc"."Script-krohnkite"."screenGapLeft" = 10;
      "kwinrc"."Script-krohnkite"."screenGapRight" = 10;
      "kwinrc"."Script-krohnkite"."screenGapTop" = 10;
      "kwinrc"."Script-krohnkite"."tileLayoutGap" = 5;
      "kwinrc"."Script-polonium"."Borders" = 3;
      "kwinrc"."Script-polonium"."KeepTiledBelow" = false;
      "kwinrc"."Script-polonium"."ResizeAmount" = 135;
      "kwinrc"."Script-polonium"."SaveOnTileEdit" = true;
      "kwinrc"."Script-polonium"."TilePopups" = true;
      "kwinrc"."Tiling"."padding" = 4;
      "kwinrc"."Tiling/37021c24-541d-5305-99d3-402dd1ef974b"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.495},{\"width\":0.505}]}";
      "kwinrc"."Tiling/3a20f290-6f51-56d6-bcf3-f260d1d72443"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":x5b{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}x5d}";
      "kwinrc"."Tiling/3cd23e3f-417a-536e-b791-5faabbc8d437"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      "kwinrc"."Tiling/42ab4d16-8f13-5ad9-8a7c-7b681151df5a"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.5},{\"width\":0.5}]}";
      "kwinrc"."Tiling/92e842d7-5928-5c43-884a-4912e7cc82ed"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      "kwinrc"."Tiling/aae216bc-fb93-5c96-878f-a8a281540e09"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      "kwinrc"."Windows"."DelayFocusInterval" = 1;
      "kwinrc"."Windows"."FocusPolicy" = "FocusFollowsMouse";
      "kwinrc"."Windows"."Placement" = "Maximizing";
      "kwinrc"."Xwayland"."Scale" = 1.2;
      "kwinrc"."org.kde.kdecoration2"."BorderSize" = "Large";
      "kwinrc"."org.kde.kdecoration2"."BorderSizeAuto" = false;
      "kwinrc"."org.kde.kdecoration2"."theme" = "Breeze";
      "plasma-localerc"."Formats"."LANG" = "en_US.UTF-8";
      "plasma-localerc"."Formats"."LC_TIME" = "C";
      "plasmanotifyrc"."Applications/firefox"."Seen" = true;
      "plasmanotifyrc"."Applications/org.telegram.desktop"."Seen" = true;
    };
  };
}
