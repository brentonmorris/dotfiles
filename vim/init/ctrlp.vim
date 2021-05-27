"nnoremap <c-p> :CtrlPClearCache<bar>CtrlP<cr>
"let g:ctrlp_use_caching = 0
"
 "https://github.com/kien/ctrlp.vim/issues/174
 let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

 function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

let g:ctrlp_map = '<leader>f'

"let g:ctrlp_user_command = ['.git', 'cd %s && rg --files-with-matches ".*"', 'find %s -type f']
