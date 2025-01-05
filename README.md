# It's Liz's dotfiles
Things that lead to these dotfiles:
- I value minimalism
- I value speed
- I have spent 10 years doing my setup over and over again

## neovim
The most interesting part of my dotfiles I suspect is my `nvim` setup. Here are the main highlights:
- Full LSP support via `lspconfig`'s great premade setups. This config comes with the setups I care about but more can be added. All supported languages [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).
- I use [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting+indenting (and folding though I never use that).
- Obviously code snippets, documentation, etc. also

My favorite shortcuts:
- `\/` opens a global search of any string. This uses `Ack` with `ripgrep` (I think? It's fast enough anyway)
- `Ctrl+P` gives you a VSCode-like view of all git-tracked files in the current repo, along with a nice little preview. This just uses fugitive's `:GFiles`.
- `K`: View hover info for the current symbol. Types, docs, etc.
- `g d`: **g**o to **d**efinition of symbol.
- `g r`: **g**o to **r**eferences to symbol.
- `Space c a`: Show **c**ode **a**ctions which can solve an error.

## Sway
My Sway setup is pretty simple. Highlights:
- Customized full-screen app launcher with `bemenu` (`Win+D`)
- Put wallpapers in `/usr/share/backgrounds/wallpapers`, they will be randomly cycled through on each poweron. This is also used for the lock screen (`Ctrl+Win+L`).
- Uses `mako` as notifications daemon. I just think it's neat!
- Launches `Wezterm` by default. It's very fast.

## Waybar
My Waybar config is cool! It shows volume, wifi, battery, time and a simple tray. Colors are neat imo, but it stays understated to leave room for main content.

## Wezterm
A very barebones Wezterm setup. It's all I need.

## Mako
Not much there, I just have a few apps customized with some colors I think are fitting :) For example discord notifications have the discord color.

## Fish
These dotilfes shouldn't be valuable to anyone, they're just meant for me. My actual interesting `fish` setup is in `omf`, and it's essentially just: I use `omf` with the `lambda` theme, that's it.
