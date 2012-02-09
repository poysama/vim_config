" pathogen
" https://github.com/tpope/vim-pathogen
call pathogen#infect()
filetype plugin indent on

" NERDtree
" https://github.com/scrooloose/nerdtree
" open nerdtree if vim has no arguments
" autocmd vimenter * if !argc() | NERDTree | endif
" open nerdtree automatically
" autocmd vimenter * NERDTree
" close nerdtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" show trailing whitespaces and tabs in escape mode
" and clear them using mapleader , , (comma, comma)
highlight ExtraWhitespace ctermbg=red guibg=red
highlight CursorLine cterm=NONE ctermbg=yellow ctermfg=black guibg=darkred guifg=black
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

function TrimWhiteSpace()
  %s/\s*$//
 ''
endfunction

let mapleader = ","

" bind for clearing trailing whitespaces
map <leader><leader> :call TrimWhiteSpace()<CR>
map <C-t> <Esc>:tabnew<CR>
map <C-k> :bn<CR>
map <C-j> :bp<CR>
"map <leader>c :set cursorline!<CR>
map <F2> :NERDTreeToggle<CR>

syntax on
" sets mosts tab to 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" a menu that you want :)
set wildmode=list:longest
set wildmenu
set expandtab
set cursorline
colorscheme wombat
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" set cinkeys=0{,0},:,0#,!,!^F
