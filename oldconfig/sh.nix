{ pkgs, ...  }:

let
  myAliases = {
    ll = "ls -l";
    ".." = "cd ..";
  };
in
{
  home.packages = (with pkgs; [
    neofetch
    fzf
    lf
    grim
    slurp
    jamesdsp
    ytfzf
    devbox
    imv
    gthumb
  ]);     
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
    bashrcExtra = ''
	if command -v fzf-share >/dev/null; then
	  source "$(fzf-share)/key-bindings.bash"
	  source "$(fzf-share)/completion.bash"
	fi
    '';
  };
}
