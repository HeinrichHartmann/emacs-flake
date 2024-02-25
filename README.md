# Emacs Flake

This flake provides the latest unstable versions of Emacs, including `emacs-unstable` and `emacs-unstable-nox` (the version without X support), via the `emacs-overlay`. 
The primary goal is to offer an easy way to install and manage the cutting-edge versions of Emacs using Nix.

## Features

- **Latest Emacs Unstable**: Access the latest development versions of Emacs.
- **Simple Installation**: Easily integrate Emacs into your Nix environment with a single command.

## Prerequisites

Ensure you have Nix installed with flake support.
If you're new to Nix or unsure about flakes, check out the [Nix Flake Manual](https://nixos.org/manual/nix/unstable/command-ref/new-cli/nix3-flake.html)
for guidance on getting started.

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
