{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    # needed for rust lang server and rust-analyzer extension
    package = pkgs.vscode.fhsWithPackages (ps: with ps; [rustup zlib openssl.dev pkg-config]);
    extensions = with pkgs.vscode-extensions; [
      # Normie vscode extensions
      ms-python.python
      ms-toolsai.jupyter
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
    ];
  };
}
