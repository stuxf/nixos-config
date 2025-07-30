{
  pkgs,
  inputs,
  ...
}: {
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
    inputs.nix-alien.packages.${pkgs.system}.nix-alien
    cloc

    # Games
    heroic
    bottles
    prismlauncher
    # tetrio-desktop

    # Game Dev
    godot

    # Languages
    lean4
    swi-prolog

    # VPN
    openconnect_openssl
    networkmanager-openconnect

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
    comma
    SDL2
    SDL2.dev
    sdl3
    sdl3.dev

    # Apps
    vesktop
    spotify
    cloudflare-warp
    telegram-desktop
    signal-desktop
    arduino-ide
    notion-app-enhanced
    libreoffice
    hunspell
    (lib.hiPrio kicad)
    pinta

    # IDEs
    jetbrains.clion

    # Other Coding tools
    # binaryninja-free
    ghidra
    claude-code
    gemini-cli

    # Other CLI
    aoc-cli
  ];
}
