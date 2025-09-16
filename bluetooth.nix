# enable Bluetooth
{ config, pkgs, lib, ... }:

{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        # Battery life is an experimental feature
        Experimental = true;
	# Fast connection, at cost of power consumption
	FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
      };
    };
  };
}
