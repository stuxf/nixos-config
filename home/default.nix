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
  ];

  home.username = "user";
  home.homeDirectory = "/home/user";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
