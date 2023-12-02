{ libs, config, pkgs, ... }:

let
  djv-openexr = pkgs.djv.overrideAttrs
    (final: prev: {
      # buildInputs = with pkgs; prev.buildInputs ++ [
      #   openexr
      # ];
      # postPatch = prev.postPatch +
      #   ''
      #     sed -i etc/SuperBuild/CMakeLists.txt \
      #         -e '/list(APPEND DJV_THIRD_PARTY_DEPS OpenEXR)/d'
      #   '';
    });
in
{
  home.packages = [
    djv-openexr
  ];
}
