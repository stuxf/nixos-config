{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    llvmPackages.clang-unwrapped
    # clang-tools
    lldb
    gcc
    gdb
    valgrind
    cmake
    cmake-language-server
    gnumake
    checkmake
    codespell
    conan
    cppcheck
    doxygen
    gtest
    lcov
    # vcpkg
    # vcpkg-tool
  ];
}
