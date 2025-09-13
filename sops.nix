# Secret handling
{ config, pkgs, lib, ... }:

let
  secretsFile = ./secrets.yml;
in
{
  sops.defaultSopsFile = secretsFile;
}
