{
  config,
  pkgs,
  ...
}: {
  home.packages = [
    pkgs.nerdfonts
  ];
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      monospace = ["JetBrainsMonoNL Nerd Font Mono 13"];
    };
  };
}
