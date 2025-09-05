# Jellyfin server
{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];

  services.jellyfin.enable = true;

}
