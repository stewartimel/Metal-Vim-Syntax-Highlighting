# Metal-Vim-Syntax-Highlighting
Vim syntax file for apple metal shading language

Place metal.vim inside your vim syntax folder
and reload the buffer
(for me, it was here: PATH_TO_NEOVIM/0.5.0/share/nvim/runtime/syntax/)


In your .vimrc (init.vim for neovim) file, put this:
au BufRead,BufNewFile *.metal setfiletype metal
