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

The `<leader>` key is set to a comma (`,`).

```
Command  Action
-------  ------

Normal mode:
,v       Reload .vimrc
,n       Toggle between relative and normal line numbering
ctrl-j   Move down a screen
ctrl-k   Move up a screen
ctrl-h   Move left a screen
ctrl-l   Move right a screen
space    Turn off highlighting
,s       Search and replace
,r       Open delete/yank register
enter    Add a newline
,=       Auto-indent file
,t       Create a new tab
,h       Change an html one-liner to three lines (open tag - body - close tag)
,o       Change a single line hash to multiple lines
,O       Change a multiple line hash to one line
\        Open NERDTree
,/       Toggle comments
,f       Open CtrlP fuzzy file finder
,"       Surround WORD with ""
,'       Surround WORD with ''
,`       Surround WORD with ``
,(       Surround WORD with () and a space
,)       Surround WORD with ()
,[       Surround WORD with [] and a space
,]       Surround WORD with []
,{       Surround WORD with {} and a space
,}       Surround WORD with {}
,<       Surround WORD with <> and a space
,>       Surround WORD with <>
,d       Convert from bracket notation to dot notation
,D       Convert from dot notation to bracket notation

Visual mode:
,/       Toggle comments

Insert mode:
jk       Exit insert mode
```
