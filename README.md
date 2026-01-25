# Homebrew Tap

This is a [Homebrew](https://brew.sh/) tap for tim80411's tools.

## Installation

```bash
brew tap tim80411/tap
brew install ccx
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `ccx` | CLI tool for managing multiple Claude Code settings profiles |

## Updating

```bash
brew update
brew upgrade ccx
```

## Manual Formula Update (for maintainers)

To manually trigger the formula update workflow:

1. Go to the [Actions tab](https://github.com/tim80411/homebrew-tap/actions/workflows/update-formula.yml)
2. Click "Run workflow"
3. Enter the version to update to (e.g., `v1.0.0` or `1.0.0`)
4. Click "Run workflow"

The workflow will automatically download the binaries, calculate checksums, and update the formula.
