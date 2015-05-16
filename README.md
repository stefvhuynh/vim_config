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

Custom Mappings
---------------

The `<leader>` key is set to the spacebar. This is used to namespace custom
commands in normal mode. The spacebar in conjunction with `ctrl` is used for
namespacing custom commands in insert mode.

```
Command  Action
-------  ------

Normal mode:
space-v       Reload .vimrc
space-n       Toggle between relative and normal line numbering
ctrl-j        Move down a screen
ctrl-k        Move up a screen
ctrl-h        Move left a screen
ctrl-l        Move right a screen
space         Turn off highlighting
space-s       Search and replace in the file
space-f       Find the word under cursor in the file
space-S       Use Ag to search for a word in the cwd
space-F       Use Ag to search for the word under the cursor in the cwd
space-y       Open delete/yank register
enter         Add a newline
space-=       Auto-indent file
space-t       Create a new tab
space-z       Change an html one-liner to three lines (open tag - body - close tag)
space-Z       Change an html three-liner to one line (open tag - body - close tag)
\             Open NERDTree
space-/       Toggle comments
space-"       Surround WORD with ""
space-'       Surround WORD with ''
space-`       Surround WORD with ``
space-(       Surround WORD with () and a space
space-)       Surround WORD with ()
space-[       Surround WORD with [] and a space
space-]       Surround WORD with []
space-{       Surround WORD with {} and a space
space-}       Surround WORD with {}
space-<       Surround WORD with <> and a space
space->       Surround WORD with <>
space-d       Toggle between bracket notation and dot notation
space-gs      Runs git status command
space-ga      Runs git add <current-file> command
space-gA      Runs git add -A command
space-gc      Runs git commit command
space-gC      Runs git add -A and then git commit
space-gd      Runs git diff command
space-gb      Runs git blame command
space-gp      Runs git push command
space-ra      Runs all Rspec specs
space-rc      Runs current Rspec file
space-rn      Runs nearest Rspec spec
space-rl      Runs most recent Rspec spec

Visual mode:
space-/       Toggle comments
space-s       Search and replace in the file

Insert mode:
jk            Exit insert mode
ctrl-space-u  Uppercase word
```
