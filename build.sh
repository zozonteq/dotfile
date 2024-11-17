sudo nixos-rebuild switch --flake .#main
nix run nixpkgs#home-manager -- switch --flake .#myHome
