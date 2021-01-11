" vim: set et ts=4 sw=4 sts=4:

if &compatible
    set nocompatible
endif

set runtimepath^=~/.vim

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
set fileformat=unix
set fileformats=unix,dos,mac

set number
set autoindent
set smartindent
set backspace=indent,eol,start
set hlsearch
set laststatus=2
set modeline
set hidden
set incsearch
set showmatch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*

let $VIMRC = $HOME . '/.vimrc'
nnoremap <Space>. :so $VIMRC<CR>
nnoremap <Space>, :e $VIMRC<CR>

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $VIMRC source $VIMRC
augroup END

" never load plugins when you commit
if $HOME != $USERPROFILE && $GIT_EXEC_PATH != ''
    finish
end

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'fatih/vim-go'
Plug 'thinca/vim-quickrun'
call plug#end()

autocmd VimEnter *
            \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif

filetype plugin indent on
syntax enable

let g:go_fmt_command = "goimports"

nnoremap <silent>tt :<C-u>tabe<CR>
nnoremap <silent>th :<C-u>tabp<CR>
nnoremap <silent>tl :<C-u>tabn<CR>

set background=dark

augroup filetype_tab
    autocmd!
    autocmd FileType ruby,yaml,json,c,cpp,zsh setlocal st=2 sw=2 sts=2 et
    autocmd FileType markdown,html,css,python setlocal st=4 sw=4 sts=4 et
    autocmd FileType go setlocal st=4 sw=4 sts=4 noet
augroup END

