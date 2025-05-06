{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      git
    ];
    variables = {
      # FREETYPE_PROPERTIES="cff:no-stem-darkening=0";
      FREETYPE_PROPERTIES="truetype:interpreter-version=35";
      MOZ_DISABLE_RDD_SANDBOX= "1" ;
    };
  };
}
