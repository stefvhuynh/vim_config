Vim Config
==========

This is a basic vim configuration that's easy to install. Simply, clone this
repo anywhere you'd like. In the terminal, run the install script.

```
$ path/to/vim_config/bin/install
```

This will move your current .vim and .vimrc into .vim-original and
.vimrc-original, respectively. They will be replaced by the new vim config.

If at any point, you want restore your original vim settings, simply run the
restore script.

```
$ path/to/vim_config/bin/restore
```

You can add more vim configurations to the vimrc file in this repo, as the
vimrc file in here will be symbolically linked to your local .vimrc file after
running the install script.
