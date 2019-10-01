" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Make Y consistent with D and C
" map Y           y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>

" Fast scrolling
"nnoremap <C-e>  3<C-e>
"nnoremap <C-y>  3<C-y>
"
" In command-line mode, <C-A> should go to the front of the line, as in bash.
" cmap <C-A> <C-B>

" File tree browser
map \ :Vexplore<CR>
"map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
"map \|          :NERDTreeFind<CR>

" Previous/next quickfix file listings (e.g. search results)
 "map <M-D-Down>  :cn<CR>
 "map <M-D-Up>    :cp<CR>

" Open and close the quickfix window
map <leader>qo  :copen<CR>
map <leader>qc  :cclose<CR>

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" AckGrep current word
map <leader>a :call AckGrep()<CR>

" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" reindex ctags
map <leader>rt :!~/.vim/bin/update_ctags 2>/dev/null &<CR>

" Git blame
map <leader>g   :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle
map <D-/>       <plug>NERDCommenterToggle
imap <D-/>      <Esc><plug>NERDCommenterToggle i

" Easy access to the shell
map <Leader><Leader> :!

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""
