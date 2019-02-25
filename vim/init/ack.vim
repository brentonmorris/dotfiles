" Find current word in command mode
function! AckGrep()
  let command = "ack ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy
  let command = "ack ".@x
  cexpr system(command)
  cw
endfunction

let g:ackprg = 'ag --nogroup --nocolor --column'

nnoremap <Leader>a :Ack!<Space>
