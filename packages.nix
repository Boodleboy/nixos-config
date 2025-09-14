# Desktop-specific conf
{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim 
    kitty
    alacritty
    foot
    wget
    alsa-utils
    htop
    neofetch
    sops
    git
    wofi
    waybar
    hyprpaper
    age
    hyprpanel
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    nerd-fonts.symbols-only
  ];
}
