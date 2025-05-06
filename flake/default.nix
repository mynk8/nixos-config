{
  imports = [
    ../home
    ../hosts
  ];

  systems = ["x86_64-linux"];

  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devShells.default = pkgs.mkShell {
      packages = with pkgs; [
        alejandra
        deadnix
        git
        nil
      ];

      name = "lucky11";
      meta.description = "The default development shell";

      DIRENV_LOG_FORMAT = "";
    };

    formatter = pkgs.alejandra;
  };
}
