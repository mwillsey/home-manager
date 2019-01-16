{ config, lib, ... }:

with lib;

{
  config = {
    home.file."using-text".text = ''
      This is the
      expected text.
    '';

    nmt.script = ''
      assertFileExists home-files/using-text
      assertFileContent home-files/using-text ${./support-text-expected.txt}
    '';
  };
}
