# ✨ My Neovim Config ✨

### [**Plugins**](##Plugins) | [**Installation**](##Installation) | [**Configuration**](##Configuration)
> ***Note: This works on Unix-based systems (Linux and MacOS for sure).***
=======
## Prerequisites:
 - Install `ripgrep`
 - Packer.nvim: 
  ```shell
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
 - For markdown preview:
>>>>>>> 68f2ccd82faab8bd0232b7224ecd50d5a9996f9c

## Gallery: 
Normal Document
![Imgur](https://i.imgur.com/Mq8Fd3b.png)

Markdown Preview
![Imgur](https://i.imgur.com/b85BKYz.png)

Zen Mode
![Imgur](https://i.imgur.com/jOt7ou4.png)

Lualine
![Imgur](https://i.imgur.com/dXXWLet.png)

Github Copilot and LSP
![Imgur](https://i.imgur.com/xvW7362.png)

## Plugins
- Plugin manager: [Packer.nvim](https://github.com/wbthomason/packer.nvim)
- Fuzzy finder: [Telescope.nvim](nvim-telescope/telescope.nvim)
- Syntax Hightlighting: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Harpoon](https://github.com/ThePrimeagen/harpoon)
- Undo history: [Undo-tree](https://github.com/mbbill/undotree)
- LSP support: [Lsp-Zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- More code completion: [Coc.nvim](https://github.com/neoclide/coc.nvim)
- [Github copilot](https://github.com/github/copilot.vim)
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- Line-commenting: [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- Theme: [Kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- Status line: [lua-line](https://github.com/nvim-lualine/lualine.nvim)
- [Zen mode](https://github.com/folke/zen-mode.nvim)
- [Auto-pair](https://github.com/windwp/nvim-autopairs)
- Indent guides: [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Surround](https://github.com/kylechui/nvim-surround)
- Discord Rich Presence (optional): [Prescence.nvim](https://github.com/andweeb/presence.nvim)
- Rust crate management: [Crates.nvim](https://github.com/Saecki/crates.nvim)

## Installation:
### Dependencies:
- Neovim 0.8.0
    - Follow their instructions that can be found here
>

- A nerd font (I use Iosevka)

- Run this command to install packer.nvim (Copy/pasted from their repository)

    ```shell
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

- Run this command to install markdown-preview
    ```shell
    cd ~/.local/share/nvim/site/pack/packer/start/
    git clone https://github.com/iamcco/markdown-preview.nvim.git
    cd markdown-preview.nvim
    yarn install
    yarn build
    ```
- Install ripgrep with your package manager

- Run this command to install my configuration 
    > I would recommend doing this on a fresh install so there are no conflicts

    ```shell
    cd ~/.config/nvim
    git clone https://github.com/BardofSprites/nvim-config.git
    ```

### Uninstall:
- To remove all of the configuration run these commands:
    ```shell
    rm -rf ~/.config/nvim/
    rm -rf ~/.local/share/nvim
    rm -rf ~/.cache/nvim
    ```

## Configuration:
- To change general keybinds, use the file: `~/.config/lua/bard/remap.lua` 
- To change plugin specific keybinds, use the files in `~/.config/after/plugin/`
    - Ex: To change the zen mode plugin's keybinds, go to `~/.config/after/plugin/zenmode.lua`.
- To change the theme: change line 87 in `packer.lua` and line 28 in `set.lua`. Define a new theme in packer.lua and run `:PackerSync` in your vim console.
    - Theme options should be changed in `~/.config/nvim/lua/bard/colors.lua`, but make sure to change the setup function, as this is made specifically for the kanagawa setup procedure.  
> Make sure that your theme has support for plugins that are used (Kanagawa.nvim supports all of these)

## Optional Configuration:
- If you want to change the name of the lua directory, you will have to change the require statements in both `~/.config/nvim/init.lua` and `~/.config/nvim/lua/your_directory/init.lua`.
    - Example: `require(bard.remap)` becomes `require(your_directory.remap)`
### Installing More Plugins
If you want more plugins, you can add the declaration statement in the `~/.config/nvim/lua/packer.lua`. Because this project uses packer.lua, make sure to follow the particular plugin's installation instructions accordingly. 

Configuration of the plugins should work if you make a file in `~/.config/nvim/after/plugin/` called `myplugin.lua`.

## Default Keybinds:
> The default leader key is space. You can change it in `~/.config/nvim/lua/bard/remap.lua`. Keybinds for some plugins are kept default, make sure to check the docs before you begin to use them.

| Mode  | Function  | Keybind   | Definition   |
|-------------- |-------------- | -------------- | -------------- |
| N | Open netrw | \<leader\>pv | `~/.config/nvim/lua/bard/remap.lua` |
| N | Format file with LSP | \<leader\>f | `~/.config/nvim/lua/bard/remap.lua` |
| N | Markdown Preview | \<leader\>mp | `~/.config/nvim/lua/bard/remap.lua` |
| N | Open telescope file finder | \<C-e\> | `~/.config/nvim/after/plugin/telescope.lua` |
| N | Open telescope git file finder | \<leader\>pf | `~/.config/nvim/after/plugin/telescope.lua` |
| N | Open telescope grep | \<leader\>ps | `~/.config/nvim/after/plugin/telescope.lua` |
| N | Add a harpoon anchor | \<C-a\> | `~/.config/nvim/after/plugin/harpoon.lua` |
| N | Open all harpoon anchors | \<C-p\> | `~/.config/nvim/after/plugin/harpoon.lua` |
| N | Next harpoon anchor | \<TAB\> | `~/.config/nvim/after/plugin/harpoon.lua` |
| N | Previous harpoon anchor | \<S-Tab\> | `~/.config/nvim/after/plugin/harpoon.lua` |
| N | Toggle Undo-tree | \<leader\>u | `~/.config/nvim/after/plugin/undotree.lua` |
| N | Toggle Zen mode | \<leader\>zz | `~/.config/nvim/after/plugin/zenmode.lua` |
| N | LSP select next item | \<C-n\> | `~/.config/nvim/after/plugin/lsp.lua` |
| N | LSP select previous item | \<C-p\> | `~/.config/nvim/after/plugin/lsp.lua` |
| N | LSP confirm item | \<C-p\> | `~/.config/nvim/after/plugin/lsp.lua` |

> Tab and Shift + Tab are disabled for the LSP plugin because they mess with Github Copilot bindings.

## Credits:
- [ThePrimeagen's init.lua](https://github.com/ThePrimeagen/init.lua)
- [NvChad](https://github.com/NvChad/NvChad)
