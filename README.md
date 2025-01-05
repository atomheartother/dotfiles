# It's Liz's dotfiles
Things that lead to these dotfiles:
- I value minimalism
- I value speed
- I have spent 10 years doing my setup over and over again

## neovim
The most interesting part of my dotfiles I suspect is my `nvim` setup. Here are the main highlights:
- Full LSP support via `lspconfig`'s great premade setups. This config comes with the setups I care about but more can be added. All supported languages [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).
- I use Treesitter for syntax highlighting+indenting (and folding though I never use that).
- Obviously autocomplete, documentation, etc. also

My favorite shortcuts:
- `\/` opens a global search of any string. This uses `Ack` with `ripgrep` (I think? It's fast enough anyway)
- `Ctrl+P` gives you a VSCode-like view of all git-tracked files in the current repo, along with a nice little preview. This just uses fugitive's `:GFiles`.
- `K`: View hover info for the current symbol. Types, docs, etc.
- `g d`: **g**o to **d**efinition of symbol.
- `g r`: **g**o to **r**eferences to symbol.
- `Space c a`: Show **c**ode **a**ctions which can solve an error.
