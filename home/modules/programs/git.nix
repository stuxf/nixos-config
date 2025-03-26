{...}: {
  programs.git = {
    enable = true;
    userName = "user";
    userEmail = "70670632+stuxf@users.noreply.github.com";
    extraConfig.init.defaultBranch = "main";
    extraConfig.init.color.ui = "auto";
    extraConfig.init.pull.rebase = "false";
    delta.enable = true;
    lfs.enable = true;
  };
  programs.lazygit.enable = true;
  programs.gitui.enable = true;
  programs.gh.enable = true;
  programs.gh-dash.enable = true;
}
