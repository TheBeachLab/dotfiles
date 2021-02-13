" color
syntax enable         " enable syntax processing
colorscheme murphy    " murphy color scheme /usr/share/vim/vim82/colors

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.asm set filetype=avra

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
Plug 'maksimr/vim-jsbeautify'
Plug 'mboughaba/vim-lessmess'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
"Plug 'linduxed/colemak.vim'
call plug#end()


" latex live preview options
let g:livepreview_previewer='zathura'
let g:livepreview_cursorhold_recompile = 0


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
" Alt is  you can make it with control-v then control-[
nnoremap <up> :m .-2<CR>==
nnoremap <down> :m .+1<CR>==
inoremap <down> <Esc>:m .+1<CR>==gi
inoremap <up> <Esc>:m .-2<CR>==gi
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv

" activate mouse scroll
"
set mouse=a

" smooth scroll with mouse
"
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(20)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-20)<CR>

" F KEYS
"
inoremap <F3> <C-o>:w<CR>
inoremap <F6> <C-o>:InstantMarkdownPreview<CR>
inoremap <F7> <C-o>:LLPStartPreview<CR>


" jsbeautify
"
map <C-s> :call JsBeautify()<CR>
