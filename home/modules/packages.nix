{pkgs, ...}: {
  home.packages = with pkgs; [
    cowsay
    pokemonsay
    krabby
    fastfetch
    neofetch
    nerdfetch
    dust
    hyperfine
    alejandra
    heroic
    bottles
    prismlauncher
    zip
    xz
    unzip
    p7zip
    file
    which
    tree
    nix-output-monitor
    iotop
    iftop
    strace
    ltrace
    lsof
    sysstat
    lm_sensors
    ethtool
    pciutils
    usbutils
    # (discord.override {
    # withOpenASAR = true;
    # withVencord = true;
    # })
    vesktop
    spotify
    wl-clipboard
  ];
}
