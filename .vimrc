" color
syntax enable         " enable syntax processing
colorscheme elflord   " elflord color scheme

" spaces and tabs
set tabstop=4         " number of spaces by tab
set softtabstop=4     " number of spaces in tab when editing
set expandtab         " tabs are spaces

" UI
set number            " show line numbers
set cursorline        " hihglight current line 
set wildmenu          " visual autocomplete for command menu
set showmatch         " highlight matching [{()}]

" searching
set incsearch         " search as characters are entered
set hlsearch          " highlight matches
set ic                " case insensitive search

" key remaps
noremap <SPACE> <C-F> " space to scroll down

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

" Armor files
let g:GPGPreferArmor=1
" set the default option
let g:GPGDefaultRecipients=["me@beachlab.org"]
