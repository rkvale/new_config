
{lib, config, ...}:
{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "knights"; # Define your hostname.
 
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    kitty
    discord
    firefox
	  helix
    river
    git
    tofi
    steam
    discord
    blueman
  ];
}
