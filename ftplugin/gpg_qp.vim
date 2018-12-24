" gpg_qp.vim - Decode quoted-printable text
" Maintainer:   François Vantomme <akarzim@pm.me>
" Version:      0.1

function s:qp() abort
  let l:decodeqp_command = 'perl -p -e ''s/=\n//m;s/=([\dA-F]{2})/pack H2,$1/gie'''
  execute "%!" . l:decodeqp_command
endfunction

command DecodeQP call s:qp()
