" Vim Plug (Vim plugin manager) setup
call plug#begin()

Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'

cal plug#end()

" Line number
set number
" Set Tilte
set title
" Encoding
set encoding=utf8

" Colour Scheme
set background=dark
colorscheme everforest


" Statusline
set laststatus=2
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%1*\File\ \Path:\%F\%*
set statusline+=%2*\ %y\ \%*
set statusline+=\ %{&ff}
set statusline+=%= " Left side' of the statuslinie
set statusline+=%#Encoding#%{&fileencoding?&fileencoding:&encoding} " File encoding type
set statusline+=\ 
set statusline+=%3*\Percentage:\ \%p%%\%*
set statusline+=%4*\Curent\ \Line:\%4l\%* " Curent Lin
set statusline+=%5*\Total\ \Line:\%4L\%* " Total Line in file
set statusline+=%6*\ %{strftime('%c')}\%*

" Highlith statusline
hi User1 ctermbg=142 ctermfg=234
hi User2 ctermbg=239 ctermfg=214
hi User3 ctermbg=3 ctermfg=235
hi User4 ctermbg=109 ctermfg=234
hi User5 ctermbg=175 ctermfg=239
hi User6 ctermbg=166 ctermfg=223
hi Encoding ctermfg=208 ctermbg=237
hi NormalColor guifg=Black guibg=Aqua ctermbg=108 ctermfg=0
hi InsertColor guifg=Black guibg=Blue ctermbg=66 ctermfg=0
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0
