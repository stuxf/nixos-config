{pkgs, ...}: {
  home.packages = with pkgs; [
    # Fun
    cowsay
    pokemonsay
    krabby

    # Info Fetch
    fastfetch
    neofetch
    nerdfetch

    # New CLI
    dust
    hyperfine
    tealdeer

    # Nix Tools
    alejandra

    # Games
    heroic
    bottles
    prismlauncher

    # Utils
    zip
    xz
    unzip
    p7zip
    file
    which
    tree
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
    imagemagick
    wl-clipboard

    # Apps
    vesktop
    spotify
    cloudflare-warp
    telegram-desktop
    signal-desktop
    arduino-ide
  ];
}
