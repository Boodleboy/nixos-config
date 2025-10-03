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
    jq
    alsa-utils
    htop
    neofetch
    sops
    git
    qpwgraph
    pwvucontrol
    wofi
    waybar
    ashell
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
    kdePackages.dolphin
    wl-clipboard
    wl-clip-persist
    clipse
    eww
    socat
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
    ninja
    python3
    cargo
    rustc
    rust-analyzer
    ccache
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
