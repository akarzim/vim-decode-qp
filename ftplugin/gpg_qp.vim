" gpg_qp.vim - Decode quoted-printable text
" Maintainer:   François Vantomme <akarzim@pm.me>
" Version:      0.5

if exists("g:loaded_decodeqp") || v:version < 700
  finish
endif
let g:loaded_decodeqp = 1

if !exists("g:decodeqp_command")
  let g:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
endif

function s:qp() range abort
  execute a:firstline . "," . a:lastline . "!" . g:decodeqp_command
endfunction

command -range=% DecodeQP <line1>,<line2>call <SID>qp()
xnoremap <Plug>DecodeQP :DecodeQP<CR>
nnoremap <Plug>DecodeQP :DecodeQP<CR>
nnoremap <silent> <Plug>DecodeQPLine :call <SID>qp()<CR>

if !hasmapto('<Plug>DecodeQP')
  xmap gcp <Plug>DecodeQP
  nmap gcp <Plug>DecodeQP
  nmap gcpp <Plug>DecodeQPLine
endif
