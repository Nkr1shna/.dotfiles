# dotfiles

My personal dotfiles for macOS, managed with [GNU Stow](https://github.com/aspiers/stow), [Zim](https://zimfw.sh/) for Zsh modules, and [oh-my-posh](https://ohmyposh.dev/) for prompt theming.

## Features

- **Modular management**: Uses GNU Stow for easy symlink management of configuration files.
- **Zsh powered**: Zim framework provides plugins for autosuggestions, syntax highlighting, history search, and more.
- **Custom prompt**: oh-my-posh for a beautiful, informative, and fast shell prompt.
- **Handy aliases**: Custom `ls` and `ll` commands using `eza` with icons.
- **History tweaks and zoxide**: Optimized Zsh history settings and zoxide replaces cd.

## Getting Started

1. **Clone this repo** (recommended into `~/.dotfiles`):

    ```sh
    git clone https://github.com/Nkr1shna/.dotfiles.git ~/.dotfiles
    ```

2. **Install GNU Stow** (if not already):

    ```sh
    brew install stow   # macOS
    ```

3. **Stow your dotfiles**:

    ```sh
    cd ~/.dotfiles
    stow .
    ```

4. **Install Zim**:

    See [Zim installation instructions](https://zimfw.sh/install/).

    ```sh
    brew install zimfw
    ```

5. **Install oh-my-posh**:

    See [oh-my-posh installation instructions](https://ohmyposh.dev/docs/installation).

    ```sh
    brew install oh-my-posh
    ```
6. **Install required formulae**

    ```sh
    brew install fzf zoxide eza
    ```
6. **Restart your terminal**.

## Structure

- `.zshrc` – Main Zsh config, sources modules, aliases, and theming.
- `.zimrc` – Zim modules list.
- `.aliases` – Custom aliases.
- `.paths` – Custom `$PATH` entries.
- `.zhistconfig` – Zsh history settings.
- `.nest.omp.json` – oh-my-posh theme config.

## Notes

- Some files (like `LICENSE`, `README.md`) are ignored by Stow via `.stow-local-ignore`.

##License

[GNU GENERAL PUBLIC LICENSE](LICENSE)

