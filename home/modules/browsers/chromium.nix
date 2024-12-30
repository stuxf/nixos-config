{
  config,
  pkgs,
  ...
}: {
  programs.chromium = {
    enable = true;
    extensions = [
      # uBlock Origin Lite
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; }
      # BitWarden
      { id = "nngceckbapebfimnlniiiahkandclblb"; }
    ];
  };
}
