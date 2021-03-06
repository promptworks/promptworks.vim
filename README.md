# [PromptWorks](http://www.promptworks.com) VIM setup

## Installation Options

1. Use [PromptWorks dotfiles](https://github.com/promptworks/dotfiles)

    Installs PromptWorks `.vimrc` and other dotfiles using rcm. Highly recommended.

2. Standalone installation

    NOTE: This will move your existing `.vimrc` to `.vimrc.bak` and create a new `.vimrc`

    ALSO NOTE: This assumes your default Vim is available from the `vim` command. If this is not the case, run `:BundleInstall` inside vim after installing.

    ```sh
    bash < <(curl -Ls https://github.com/promptworks/promptworks.vim/raw/master/setup.sh)
    ```

## Development

To update vim-plug:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
