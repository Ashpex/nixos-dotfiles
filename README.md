# Dotfiles

My personal configuration files managed with home-manager.

## Structure

```
dotfiles/
└── .config/
    ├── kitty/       # Kitty terminal config
    │   └── kitty.conf
    ├── nvim/        # Neovim config
    │   └── init.lua
    └── zsh/         # Zsh config
        └── .zshrc
```

## Usage

These dotfiles are managed by home-manager in my [nixos-config](../nixos-config) repository.

See `users/ashpex/default.nix` for how they're integrated.
