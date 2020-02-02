" color
syntax enable         " enable syntax processing
colorscheme elflord   " elflord color scheme

" spaces and tabs
"set tabstop=4         " number of spaces by tab
"set softtabstop=4     " number of spaces in tab when editing
"set expandtab         " tabs are spaces

" UI
set number            " show line numbers
set cursorline        " hihglight current line 
set wildmenu          " visual autocomplete for command menu
set showmatch         " highlight matching [{()}]

" searching
set incsearch         " search as characters are entered
set hlsearch          " highlight matches
set ic                " case insensitive search

" Specify a directory for plugins
call plug#begin('~/.vim/bundle')
Plug 'jamessan/vim-gnupg'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mzlogin/vim-markdown-toc'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

" abbreviations

abb faff francisco@fabfoundation.org
abb habl hola@beachlab.org
abb mapt me@partytonight.co.uk
abb sagc seacrets@gmail.com
abb fahx francisco@hexxan.com
abb fl Fab Lab
abb fls Fab Labs
abb tbl The Beach Lab
abb tabl The (awesome) Beach Lab

" powerline settings
let g:powerline_pycmd="py3"
set laststatus=2

" GPG options
let g:GPGPreferArmor=1
" set the default option
let g:GPGDefaultRecipients=["me@beachlab.org"]

" gitgutter options
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
set signcolumn=yes
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 1
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

"
" Sample command W
"
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Move lines up and down
"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" activate mouse scroll
"
set mouse=a

" smooth scroll with mouse
"
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(20)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-20)<CR>

" vimopelli the vim kokopelli
"
inoremap <F3> <C-o>:w<CR>
inoremap <F4> <C-o>:w<CR><C-o>:silent ! ./trigger.sh<CR><C-o>:redraw!<CR>

