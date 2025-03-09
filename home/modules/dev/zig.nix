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
    unstable.zig
    unstable.zls
  ];
}
