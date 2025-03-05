{inputs, lib, config, pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "donald";
  

 environment.systemPackages = with pkgs; [
    jaq
];

  
}
