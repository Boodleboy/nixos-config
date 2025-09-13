# Desktop-specific conf
{ config, pkgs, lib, ... }:

{
  fileSystems."/media" = {
    device = "/dev/disk/by-uuid/8b059994-6679-4b29-9c4c-d70ea7b9dacc";
    fsType = "ext4";
    options = [ "nofail" "x-systemd.automount" ];
  };

  systemd.tmpfiles.rules = [
    "d /data 0755 root root -"
  ];
}
