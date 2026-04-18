# Homebrew Tap

This is a [Homebrew](https://brew.sh/) tap for tim80411's tools.

## Installation

```bash
brew tap tim80411/tap

# CLI formula
brew install ccx

# Desktop app cask (macOS)
brew install --cask tunnelbox
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `ccx` | CLI tool for managing multiple Claude Code settings profiles |

## Available Casks

| Cask | Description |
|------|-------------|
| `tunnelbox` | Local static website management desktop application (macOS universal) |

## Updating

```bash
brew update
brew upgrade ccx
brew upgrade --cask tunnelbox
```

## For Maintainers

### Manually Trigger Formula Update

You can manually update the formula to a new version:

1. Go to the [Actions tab](https://github.com/tim80411/homebrew-tap/actions/workflows/update-formula.yml)
2. Click on "Update Formula" workflow
3. Click "Run workflow" button
4. Enter the version number (e.g., `v0.1.0` or `0.1.0`)
5. Click "Run workflow"

The workflow will automatically download the binaries, calculate checksums, and update the formula.
