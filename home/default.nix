{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/packages.nix
    ./modules/programs/bash.nix
    ./modules/programs/git.nix
    ./modules/programs/firefox.nix
    ./modules/programs/foot.nix
    ./modules/editors/helix.nix
  ];

  gtk.enable = true;
  catppuccin.enable = true;
  catppuccin.flavor = "mocha";
  catppuccin.accent = "pink";
  catppuccin.gtk.enable = true;
  catppuccin.gtk.gnomeShellTheme = true;
  catppuccin.gtk.size = "standard";

  home.username = "user";
  home.homeDirectory = "/home/user";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
