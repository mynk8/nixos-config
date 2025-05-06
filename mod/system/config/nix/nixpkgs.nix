{inputs, ...}: {
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      inputs.nixpkgs-f2k.overlays.compositors
      inputs.nixpkgs-f2k.overlays.window-managers
      inputs.nixpkgs-f2k.overlays.stdenvs
    ];
  };
}
