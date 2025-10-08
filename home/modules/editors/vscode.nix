{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    # needed for rust lang server and rust-analyzer extension
    package = pkgs.vscode.fhsWithPackages (ps: with ps; [rustup zlib openssl.dev pkg-config]);
    profiles.default.extensions = with pkgs.vscode-extensions; [
      # Normie vscode extensions
      # ms-python.python # Temporarily disabled due to pygls compatibility issue
      # ms-toolsai.jupyter # Temporarily disabled due to potential Python dependencies
      ms-vscode.cpptools-extension-pack
      vscjava.vscode-java-pack
      ecmel.vscode-html-css
      golang.go
      dart-code.dart-code
      rust-lang.rust-analyzer

      # Other Popular Extensions
      ritwickdey.liveserver
      esbenp.prettier-vscode
      ms-vscode.cmake-tools
      ms-vsliveshare.vsliveshare
      tomoki1207.pdf
      # ms-toolsai.jupyter # Temporarily disabled due to potential Python dependencies

      # Typst
      myriad-dreamin.tinymist

      # Dev Containers
      ms-vscode-remote.remote-containers
    ];
    # userSettings = {
    #   "editor.fontfamily" = "'JetBrainsMonoNL Nerd Font Mono', 'Droid Sans Mono', 'monospace', monospace";
    #   "[typst]" = {
    #     "editor.wordSeparators" = "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?";
    #   };
    #   "[typst-code]" = {
    #     "editor.wordSeparators" = "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?";
    #   };
    # };
  };
}
