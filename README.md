# Emacs Flake

This flake provides the latest unstable versions of Emacs, including `emacs-unstable` and `emacs-unstable-nox` (the version without X support), via the `emacs-overlay`. 
The primary goal is to offer an easy way to install and manage the cutting-edge versions of Emacs using Nix.

## Features

- **Latest Emacs Unstable**: Access the latest development versions of Emacs.
- **Simple Installation**: Easily integrate Emacs into your Nix environment with a single command.

## Usage

```bash
nix run github:heinrichhartmann/emacs-flake
```

## Installation

To install `emacs-unstable` directly into your user environment using the `nix` command, execute:

```bash
nix profile install github:heinrichhartmann/emacs-flake
```

To get the version without graphical environment, you can use:

```bash
nix profile install github:heinrichhartmann/emacs-flake#emacs-unstable-nox
```
