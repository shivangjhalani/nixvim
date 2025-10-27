# Agent Guidelines for NixVim Configuration

## Build/Test Commands
- **Build**: `nix build`
- **Check/Test**: `nix flake check`
- **Format**: `nix fmt` (uses nixfmt-rfc-style)
- **Pre-commit hooks**: `statix` (linter) and `nixfmt-rfc-style` run automatically
- **Dev shell**: `nix develop` (includes pre-commit hooks)

## Code Style
- **Language**: Nix configuration files (.nix)
- **Formatting**: Use 2 spaces for indentation, no tabs
- **Imports**: Use relative paths in default.nix (e.g., `./settings.nix`, `./plugins/lsp/lsp.nix`)
- **Structure**: Organize plugins by category (cmp/, editor/, lsp/, git/, ui/, utils/)
- **Naming**: Use kebab-case for files (e.g., `indent-blankline.nix`, `todo-comments.nix`)
- **Lua config**: Inline Lua via `extraConfigLua` or `extraConfigLuaPre` strings
- **Plugin config**: Use structured attrs: `enable`, `settings`, `extraOptions`, `keymaps`
- **Keymaps**: Define with `mode`, `key`, `action`, `options` (silent, desc, expr, remap)
- **Types**: Use pkgs parameter for packages; no explicit type annotations needed
- **Comments**: Nix comments use `#`; inline Lua comments use `--` or `# lua` marker

## Architecture
- Entry point: `config/default.nix` imports all modules
- Settings in `settings.nix` (opts, clipboard, extraConfigLuaPre)
- LSP servers configured in `plugins/lsp/lsp.nix` with schema support
