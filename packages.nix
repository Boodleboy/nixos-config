# Desktop-specific conf
{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    nix-search-cli
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
    swaynotificationcenter
    swayosd
    libnotify
    procps
    sysstat
    lm_sensors
    acpi
    age
    hyprpaper
    hyprpanel
    btop
    fastfetch
    discord
    gcc
    binutils
    ast-grep
    ripgrep
    fzf
    lazygit
    go
    tree-sitter
    ghostscript
    gnumake
    cmake
    llvmPackages_21.lld
    llvmPackages_21.llvm
    llvmPackages_21.clang
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    nerd-fonts.symbols-only
  ];
}
