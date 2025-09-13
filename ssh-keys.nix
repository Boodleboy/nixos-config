# ssh keys
{ config, pkgs, lib, ... }:

{

  sops.secrets.github-key = { };
  # github
  home-manager.users.jacob = {
    home.file.".ssh/github".text = config.sops.secrets.github-key.path;
    home.file.".ssh/github.pub".text = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK+xhJ6x3b+JrH2iIqD2EogXoJ7IMmgnM9NVd13f3WM6 jacobmcpeak98@gmail.com";
    home.file.".ssh/config".text = lib.mkAfter ''
      Host github.com
        User git
	IdentityFile ~/.ssh/config
      '';
  };

  # github but for root
  home-manager.users.root = {
    home.file.".ssh/github".text = config.sops.secrets.github-key.path;
    home.file.".ssh/github.pub".text = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK+xhJ6x3b+JrH2iIqD2EogXoJ7IMmgnM9NVd13f3WM6 jacobmcpeak98@gmail.com";
    home.file.".ssh/config".text = lib.mkAfter ''
      Host github.com
        User git
	IdentityFile ~/.ssh/config
      '';
  };
}
