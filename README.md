# Neovim Config

AstroNvim v6 personal configuration.

## Requirements

- Neovim >= 0.11
- Git
- A [Nerd Font](https://www.nerdfonts.com/)
- A C compiler (for treesitter)
- `ripgrep` (for live grep)
- `cargo` (for tree-sitter-cli, optional)

## Installation

### 1. Back up existing config

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone this config

```bash
git clone https://github.com/inianv/astronvim-config.git ~/.config/nvim
```

### 3. Start Neovim

```bash
nvim
```

Lazy will bootstrap itself and install all plugins automatically.
If you see treesitter errors on first launch, run `:Lazy sync` and restart.

## Updating

```bash
cd ~/.config/nvim
git pull
```

Then inside Neovim run `:Lazy sync` to update plugins.
