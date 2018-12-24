" gpg_qp.vim - Decode quoted-printable text
" Maintainer:   François Vantomme <akarzim@pm.me>
" Version:      0.2

function s:qp() range abort
  let l:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
  execute a:firstline . "," . a:lastline . "!" . l:decodeqp_command
endfunction

command -range=% DecodeQP <line1>,<line2>call s:qp()
