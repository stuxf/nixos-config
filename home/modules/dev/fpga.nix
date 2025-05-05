{
  pkgs,
  inputs,
  ...
}: {
  home.packages = let
    unstable = import inputs.nixpkgs-unstable {
      system = pkgs.system;
      config.allowUnfree = true;
    };
  in [
    unstable.apio
    unstable.apio-udev-rules
    unstable.haskellPackages.sv2v
  ];
}
