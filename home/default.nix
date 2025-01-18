{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/packages.nix
    ./modules/programs/bash.nix
    ./modules/programs/git.nix
    ./modules/programs/gpg.nix
    ./modules/programs/foot.nix
    ./modules/editors/helix.nix
    ./modules/editors/micro.nix
    ./modules/editors/zed.nix
    ./modules/editors/vscode.nix
    ./modules/gnome/dconf.nix
    ./modules/dev/python.nix
    ./modules/programs/zathura.nix
    ./modules/dev/typst.nix
    ./modules/dev/c-cpp.nix
    ./modules/dev/html.nix
    ./modules/theming/catppuccin.nix
    ./modules/shell/fish.nix
    ./modules/shell/bat.nix
    ./modules/shell/btop.nix
    ./modules/shell/zoxide.nix
    ./modules/shell/atuin.nix
    ./modules/shell/eza.nix
    ./modules/shell/direnv.nix
    ./modules/shell/yazi.nix
    ./modules/shell/fd.nix
    ./modules/shell/starship.nix
    ./modules/shell/zellij.nix
    ./modules/shell/ripgrep.nix
    ./modules/shell/fzf.nix
    ./modules/theming/font.nix
    ./modules/browsers/firefox.nix
    ./modules/browsers/chromium.nix
  ];

  home.username = "user";
  home.homeDirectory = "/home/user";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
