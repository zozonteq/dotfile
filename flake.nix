{
  inputs = {
	  nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
	  home-manager = {
	  	url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	  };
  };
  outputs = inputs: {
  	nixosConfigurations = {
		main = inputs.nixpkgs.lib.nixosSystem{
			system = "x86_64-linux";
			modules = [
				./configuration.nix
			];
		};
	};
	homeConfigurations = {
		myHome = inputs.home-manager.lib.homeManagerConfiguration {
			pkgs = import inputs.nixpkgs{
				system = "x86_64-linux";
				config.allowUnFree = true;
			};
			extraSpecialArgs = {
				inherit inputs;
			};
			modules = [
				./home.nix
			];
		};
	};
  };
}
