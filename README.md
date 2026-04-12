# fast-tags-vim
A vim utility for setting up the fast-tags haskell tool

The idea is that it gives an automatic install of fast-tags when using vim-plug to do a plug-install.
You just need to add fast-tags-vim to your vimrc like so

Plug 'JonnyRa/fast-tags-vim', { 'do': './install' }

It does the following:
* installs fast-tags using stack 
* puts init-tags on your path (~/.local/bin)
* puts qualified_tags.py into (~/.vim/py)
* adds autocommands to call init-tags when writing haskell buffers
* loads qualified_tags.py when python is installed

These bits of code are basically from the tools bit of the fast-tags repo but with a few minor differences:
* we're using bash rather than zshell
* we're using qualified rather than fully qualified tags
* we're using pythonx rather than python

These are all bits and pieces I changed to get things working in my environment and then have been copying around in my vimrc and from ~/.local/bin ever since
The idea is to make it a bit easier to get a working vim environment up quickly after having to reinstall your operating system
