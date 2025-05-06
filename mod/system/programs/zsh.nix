{
  lib,
  pkgs,
  ...
}: {

  programs.fish.enable = true;
  programs.fish.shellAliases = {
    ll = "exa --icons --color=always";
    la = "exa -la --icons --color=always";
    gs = "git status";
    gp = "git pull";
  };
}
