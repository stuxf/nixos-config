{
  config,
  pkgs,
  ...
}: let
  python313Optimized = pkgs.python313.override {
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
      pydot
      pandas
      scikit-learn

      # QOL
      tqdm

      # EE stuff
      kicad

      # Jupyter Notebook
      jupyter
      ipython
      ipykernel
      jupyterlab
      pip

      # llm slop stuff
      mcp

      # CTF
      pwntools
      pycryptodome
      gmpy2
      pillow
      sympy
    ];
in {
  programs.ruff.enable = true;
  programs.ruff.settings = {};

  # Enable Python and PyPy3 with the necessary packages
  home.packages = with pkgs; [
    uv
    (python313Optimized.withPackages (ps: pythonPackages ps))
    # (pkgs.pypy3.withPackages (ps: pythonPackages ps))
  ];
}
