{...}: {
  programs.git = {
    enable = true;
    userName = "user";
    userEmail = "70670632+stuxf@users.noreply.github.com";
    extraConfig.init.defaultBranch = "main";
    extraConfig.init.color.ui = "auto";
    extraConfig.init.pull.rebase = "false";
  };
}
