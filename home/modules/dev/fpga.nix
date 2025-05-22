{pkgs, ...}: {
  home.packages = with pkgs; [
    apio
    apio-udev-rules
    haskellPackages.sv2v
  ];
}
