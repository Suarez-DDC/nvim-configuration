local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
  -- My plugins here

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- plugins manager 
  use 'wbthomason/packer.nvim'
  -- theme plugin
  use 'catppuccin/nvim'
  -- file explorer 
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }
  -- statusline Feline
  --use 'feline-nvim/feline.nvim'
  -- color bg hex,rgb,etc
  use 'norcalli/nvim-colorizer.lua'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }








  end)
