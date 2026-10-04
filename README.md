# Espuppet's Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Structure & Managed Configurations

- **Tmux**: `~/.tmux.conf` (`dot_tmux.conf`)
- **Coding Agents**:
  - `~/AGENTS.md` (`AGENTS.md.tmpl`)
  - `~/.pi/agent/` (`dot_pi/agent/`)
  - `~/.config/opencode/` (`dot_config/opencode/`)
- **Neovim**: `~/.config/nvim/lua/plugins/` (`dot_config/nvim/lua/plugins/`)
- **External Skills**: Managed via `.chezmoiexternal.toml` (syncing [mattpocock/skills](https://github.com/mattpocock/skills))

## Usage

```bash
# Apply dotfiles to home directory
chezmoi apply

# Update external dependencies
chezmoi update
```
