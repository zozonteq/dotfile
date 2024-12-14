{pkgs, config, ...}:{
	home = rec { 
		username = "user";
		homeDirectory = "/home/${username}";
		stateVersion = "25.05";
	};
	programs.home-manager.enable = true;
	programs = {
    git = {
      enable = true;
      userName = "zozonteq";
      userEmail = "ottotak@outlook.com";
    };
		gh.enable = true;
		neovim = {
			enable = true;
			vimAlias = true;
      viAlias = true;
      withNodeJs = true;
			plugins = with pkgs.vimPlugins; [
				lazy-nvim
			];
	 	};
	};
	home.packages = with pkgs; [
		bat
		eza
		ripgrep
		lazygit
    gcc
    neofetch
    cargo
    unzip
    tmux
	];
  home.file."./.config/nvim" = {
    source = ./nvim;  
    target = ".config/nvim"; 
  };
}
