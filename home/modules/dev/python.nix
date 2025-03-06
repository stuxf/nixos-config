{
  config,
  pkgs,
  ...
}: let
  python312Optimized = pkgs.python312.override {
    enableOptimizations = true; # Enable optimizations
    reproducibleBuild = false; # Allow non-reproducible builds for performance
  };

  # Packages to be installed
  pythonPackages = ps:
    with ps; [
      # LSP Stuff
      python-lsp-server
      python-lsp-ruff

      # Scientific Computing Stuff
      numpy
      matplotlib
      scipy

      # QOL
      tqdm

      # Jupyter Notebook
      jupyter
      ipython
      ipykernel
      jupyterlab
      pip
    ];
in {
  programs.ruff.enable = true;
  programs.ruff.settings = {};

  # Enable Python and PyPy3 with the necessary packages
  home.packages = with pkgs; [
    uv
    (python312Optimized.withPackages (ps: pythonPackages ps))
    # (pkgs.pypy3.withPackages (ps: pythonPackages ps))
  ];
}
