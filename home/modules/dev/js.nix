{pkgs, ...}: {
  home.packages = with pkgs; [
    # NodeJS things
    nodejs
    nodePackages.pnpm
    yarn
    pnpm

    # Bun things
    bun

    # Deno things
    deno
  ];
}
