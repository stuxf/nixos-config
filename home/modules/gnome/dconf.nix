{
  config,
  pkgs,
  ...
}: {
  dconf = {
    enable = true;
    settings = {
      "org/gnome/mutter" = {
        dynamic-workspaces = true;
        edge-tiling = true;
      };
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = [
          pkgs.gnomeExtensions.appindicator.extensionUuid
          pkgs.gnomeExtensions.pop-shell.extensionUuid
          pkgs.gnomeExtensions.blur-my-shell.extensionUuid
        ];
        "app-switcher/current-workspace-only" = true;
      };
      # For some reason there is only support for one layer of flattening
      "org/gnome/shell/extensions/pop-os" = {
        "tile-by-default" = true;
        "snap-to-grid" = true;
        "show-title" = true;
        # "active-hint" = true;
      };
      "org/gnome/desktop/interface" = {
        "clock-show-seconds" = true;
        "clock-show-weekday" = true;
      };
      "org/gnome/desktop/calendar" = {
        "show-weekdate" = true;
      };
      "org/gnome/desktop/peripherals/touchpad" = {
        "disable-while-typing" = false;
      };
      "org/gnome/desktop/privacy" = {
        "recent-files-max-age" = 30;
        "remove-old-trash-files" = true;
        "remove-old-temp-files" = true;
      };
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-uri = "file://" + ./wallpaper.png;
        picture-options = "zoom";
      };
      "org/gnome/desktop/wm/keybindings" = {
        close = ["<Super>q"];
        minimize = ["<Super>comma"];
      };
      "org/gnome/settings-daemon/plugins/media-keys" = {
        home = ["<Super>f"];
        www = ["<Super>b"];
        screensaver = ["<Super>Escape"];
        custom-keybindings = [
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        ];
      };
      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        binding = "<Super>t";
        command = "foot";
        name = "Terminal";
      };
      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
        binding = "<Super>d";
        command = "vesktop";
        name = "Discord";
      };
      "org/gnome/mutter/wayland/keybindings" = {
        restore-shortcuts = [];
      };
    };
  };
}
