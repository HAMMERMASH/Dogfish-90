syntax on

colorscheme iceberg
set fillchars+=vert:\ 
highlight StatusLine ctermfg=1 ctermbg=1
highlight StatusLineNC ctermfg=black ctermbg=black
highlight VertSplit ctermfg=black ctermbg=black
set backspace=2

" search color
hi Search cterm=NONE ctermfg=black ctermbg=cyan
set number

set ruler
set cursorcolumn
highlight CursorColumn ctermbg=black ctermfg=gray

set foldmethod=indent
set foldlevelstart=20
highlight Folded ctermfg=172 ctermbg=black

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2

set nobackup
set backupcopy=yes
set ignorecase smartcase
set hlsearch
set autoindent

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

inoremap { {}<Left>
inoremap <expr> } strpart(getline('.'),col('.')-1,1)=="}"?"\<Right>" : "}"
inoremap (  ()<Left>
inoremap <expr> ) strpart(getline('.'),col('.')-1,1)==")"?"\<Right>" : ")"
inoremap [  []<Left>
inoremap <expr> ] strpart(getline('.'),col('.')-1,1)=="]"?"\<Right>" : "]"
inoremap <expr> ' strpart(getline('.'),col('.')-1,1)=="\'"?"\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'),col('.')-1,1)=="\""?"\<Right>" : "\"\"\<Left>"
inoremap <expr> <CR> strpart(getline('.'),col('.')-2,1)=="{"?"<CR><Esc>ko<Tab>": "<CR>"

" powerline
" source /Users/hammermash/anaconda3/lib/python3.6/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set laststatus=2
" set t_Co=256

" copy to clipboard
nmap <F2> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F2> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F1> :.w !pbcopy<CR><CR>
vmap <F1> :w !pbcopy<CR><CR>
