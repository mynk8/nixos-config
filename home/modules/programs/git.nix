{pkgs, ...}: {
  home.packages = with pkgs; [
    act
    gist
    gitflow
    zsh-forgit
  ];

  programs = {
    git = {
      enable = true;
        };
  };
}
