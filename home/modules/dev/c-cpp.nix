{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # llvmPackages.libcxxClang
    clang-tools
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
