# vim-decode-qp

Decode Quoted-Printable text

## Usage

~~~vim
:[range]DecodeQP        " Decode [range] lines. Defaults to the whole file.

{Visual}gcp             " Decode the highlighted lines.

gcp                     " Decode the whole file.
~~~

## Install

### with [Plug]

~~~vim
Plug 'akarzim/vim-decode-qp', { 'for': 'asc' }
~~~

### from script

https://www.vim.org/scripts/script.php?script_id=5757

[Plug]: https://github.com/junegunn/vim-plug
