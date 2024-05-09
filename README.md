# nvim-config

This is my neovim configuration based on the lazyvim distro !!!

![image](https://github.com/RosaUlisses/nvim-config/assets/81490716/b6765f72-5a55-4e05-a6dc-d29a56bd819f)


# Instalation 💤
   ```bash
    # required
    mv ~/.config/nvim{,.bak}

    # optional but recommended
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}

    git clone https://github.com/RosaUlisses/nvim-config ~/.config

    ln -s ~/.config/nvim-config/nvim ~/.config/nvim

    # remove the .git folder, so you can add it to your own repo later
    rm -rf ~/.config/nvim/.git
   ```

# Features 🥶
  - **Plugin package manager**: Plugin management with [lazy.nvim](https://github.com/folke/lazy.nvim)
  - **Git support**: Git infos with [gitsigns](https://github.com/lewis6991/gitsigns.nvim) and other stuff with [fugitive](https://github.com/lewis6991/gitsigns.nvim)
  - **Autosave**: [Autosave](https://github.com/Pocco81/auto-save.nvim) of the files
  - **Hop**: File navigation
  - **Debugging**: Easy debugging with [nvim-dap](https://github.com/mfussenegger/nvim-dap) and [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
  - **Competitive programming support**: [competitest](https://github.com/xeluxee/competitest.nvim)
  - **Lsp**: [mason](https://github.com/williamboman/mason.nvim) and [lsp-config](https://github.com/neovim/nvim-lspconfig)
  - **LaTeX**: Compile, view and autocomplete for LaTeX projects with [vim-tex](https://github.com/lervag/vimtex)
  - **Supported programming languages**: C/C++, Rust, C#, Haskell and Lua
  - **Lazyvim**: All the default plugins of [lazyvim](https://github.com/LazyVim/LazyVim) distro
  


# *TODO:*
  - [] README file to the repo
  - [] installation script
