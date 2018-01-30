syntax on

colorscheme default
set fillchars+=vert:\ 
highlight StatusLine ctermfg=1 ctermbg=1
highlight StatusLineNC ctermfg=black ctermbg=black
highlight VertSplit ctermfg=black ctermbg=black

set number

set ruler
set cursorcolumn

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
inoremap <expr> " strpart(getline('.'),col('.')1,1)=="\""?"\<Right>" : "\"\"\<Left>"
