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
    tetrio-desktop

    # Languages
    lean4
    swi-prolog

    # Other Packages
    devbox
    distrobox

    # Utils
    zip
    xz
    unzip
    p7zip
    fx
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
    mprocs

    # Apps
    vesktop
    spotify
    cloudflare-warp
    telegram-desktop
    signal-desktop
    arduino-ide

    # IDEs
    jetbrains.clion
  ];
}
