set nocompatible  
set number
set ruler
set ts=2
colorscheme desert
syntax on
set hlsearch
set incsearch
set wildmenu

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set nocp
set backspace=indent,eol,start
set t_Co=256
set modeline
set ls=2

set autoindent
set cindent

set nofoldenable    " disable folding

autocmd FileType c,cpp,java,scala      let b:comment_leader = '//'
autocmd FileType groovy                let b:comment_leader = '//'
autocmd FileType sh,ruby,python        let b:comment_leader = '#'
autocmd FileType conf,fstab,perl       let b:comment_leader = '#'
autocmd FileType tex                   let b:comment_leader = '%'
autocmd FileType mail                  let b:comment_leader = '>'
autocmd FileType vim                   let b:comment_leader = '"'
function! CommentToggle()
    execute ':silent! s/\([^ ]\)/' . b:comment_leader . ' \1/'
    execute ':silent! s/^\( *\)' . b:comment_leader . ' \?' . b:comment_leader . ' \?/\1/'
endfunction
map <F7> :call CommentToggle()<CR>



