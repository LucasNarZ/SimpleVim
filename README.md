# SimpleVim

**SimpleVim** is a minimal and clean Neovim configuration that includes only the essential features for an efficient development environment. It is designed to be fast, lightweight, and easy to understand.
 
---
## Features

- Language Server Protocol (LSP) support
- Autocompletion with snippet support
- File explorer and fuzzy file finder
- Git integration and status signs
- Treesitter-based syntax highlighting
- Statusline and icon support
- Terminal integration and auto-saving
- Auto-closing brackets and commenting shortcuts
- Discoverable keymaps with on-screen hints
- A consistent and customizable theme

---
## Requirements

- Neovim >= 0.10.0
- A terminal that supports true colors
---
## Installation

Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/LucasNarZ/SimpleVim ~/.config/nvim
```
Open Neovim, and the plugin manager will automatically install all required plugins on startup.

---
## Plugin Manager

This setup uses lazy.nvim, a modern, fast, and lazy-loading plugin manager for Neovim.

---

## Keybindings

| Keybinding	| Action |
|-----------|---------|
| \<Space>	| Leader key |
| <Space>ff |	Find file (Telescope) |
| <Space>fg | Live grep |
| <Space>e	| Toggle file tree |
| gcc / gc |	Comment line / selection |
| <Ctrl-\\> |	Toggle terminal |

---
## Contributing

Pull requests and suggestions are welcome. The goal is to keep this setup minimal and beginner-friendly.
