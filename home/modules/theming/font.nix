{
  config,
  pkgs,
  ...
}: {
  home.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      monospace = ["JetBrainsMonoNL Nerd Font Mono 13"];
    };
  };
}
