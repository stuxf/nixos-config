{pkgs, ...}: {
  home.packages = with pkgs; [
    # NodeJS things
    nodejs
    nodePackages.pnpm
    yarn

    # Bun things
    bun

    # Deno things
    deno
  ];
}
