{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    clang-tools
    lldb
    gcc
    gdb
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
