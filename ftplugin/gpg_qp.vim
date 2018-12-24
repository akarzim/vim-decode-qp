" gpg_qp.vim - Decode quoted-printable text
" Maintainer:   François Vantomme <akarzim@pm.me>
" Version:      0.3

if !exists("g:decodeqp_command")
  let g:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
endif

function s:qp() range abort
  execute a:firstline . "," . a:lastline . "!" . g:decodeqp_command
endfunction

command -range=% DecodeQP <line1>,<line2>call s:qp()
