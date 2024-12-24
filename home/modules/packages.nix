{pkgs, ...}: {
  home.packages = with pkgs; [
    neofetch
    nnn
    alejandra
    zip
    xz
    unzip
    p7zip
    file
    which
    tree
    nix-output-monitor
    btop
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
