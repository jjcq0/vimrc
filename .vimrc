
set nocompatible              " be iMproved, required
filetype off                  " required

" set encoding=UTF-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
" Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gogoprog/vim-makefile-manager'
" Plugin 'azadkuh/vim-cmus'
Plugin 'gpanders/vim-oldfiles'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'ajh17/VimCompletesMe'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'maralla/completor.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'w0rp/ale'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

" set listchars=tab:\|\
" set list

set relativenumber
set nu rnu
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

" map <C-b> :NERDTreeToggle<CR>
map <C-b> :CtrlPBuffer<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:ycm_autoclose_preview_window_after_completion = 1


" Configurar plugin para comentarios
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" let g:lightline = {
      " \ 'component_function': {
      " \   'filename': 'LightlineFilename',
      " \ },
      " \ }
" 
" function! LightlineFilename()
  " return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        " \ &filetype ==# 'unite' ? unite#get_status_string() :
        " \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        " \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
" endfunction
" 
" let g:unite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0
" let g:vimshell_force_overwrite_statusline = 0
set laststatus=2

let g:NERDTreeShowIgnoredStatus = 1

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nnoremap <C-w> <C-w>w

filetype plugin on 

" line vertical configuración

let g:indentLine_setColors = 1
let g:indentLine_color_term = 100
let g:airline_theme='base16'

syntax on
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
" let g:phpcomplete_index_composer_command='/usr/bin/composer'
set updatetime=100

" autocmd FileType vim let b:vcm_tab_complete = 'vim'

" set foldmethod=indent
" set foldlevel=1
" set foldclose=all 


" let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
" let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
" 
" let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
" let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
" 
" let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
" let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

" let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
" let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

set hlsearch
" hi Search ctermbg="D4843"
let g:completor_clang_binary = "/usr/bin/clang++"
map <c-\> <Plug>CompletorCppJumpToPlaceholder
imap <c-\> <Plug>CompletorCppJumpToPlaceholder
let g:SimpylFold_docstring_preview = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:SimpylFoldImports = 1
let g:ale_completion_enabled = 1
" let g:airline_statusline_ontop=1
