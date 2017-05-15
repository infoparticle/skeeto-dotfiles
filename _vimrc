" Mappings for working with this file.
map <Leader>ev :edit $MYVIMRC<CR>
map <Leader>es :source $MYVIMRC<CR>

" Miscellaneous
set encoding=utf-8
set shellslash
set backspace=indent,eol,start
set guioptions=
set autochdir
set hidden
set cpoptions+=$
set lazyredraw
set showcmd
set nobackup
set noswapfile

" Wildmenu
set wildmenu
set wildmode=longest,list

" One space between sentences please.
set nojoinspaces

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Colors and themes
syntax on
if has('gui_running') || &t_Co == 256
    colorscheme wombat256dave
else
    colorscheme elflord
end
if &term =~ "xterm" || &term =~ "screen"
    let &t_SI = "\<Esc>[6 q"
    let &t_EI = "\<Esc>[2 q"
end

" Tab configuration
set expandtab
set shiftwidth=4
set shiftround
set smarttab
set autoindent

" No noise
set novisualbell
set noerrorbells
if exists('&belloff')
   set belloff=all
endif

" Statusline
set statusline=%m%F%=%y\ %l/%L\ %3v\ U+%04B
set laststatus=2
hi StatusLine guibg=Gray16 guifg=White

" netrw
let g:netrw_banner=0

" Filetypes
filetype on
filetype plugin on
filetype indent on

" Build
set makeprg=smake
set autowrite

" Spelling
set spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add
