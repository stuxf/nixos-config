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
    ./modules/gnome/dconf.nix
    ./modules/dev/python.nix
    ./modules/programs/zathura.nix
    ./modules/dev/typst.nix
    ./modules/theming/catppuccin.nix
    ./modules/shell/fish.nix
  ];

  home.username = "user";
  home.homeDirectory = "/home/user";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
