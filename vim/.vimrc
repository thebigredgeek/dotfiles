set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
" Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'dikiaap/minimalist'
Plugin 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on

" YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

" Hacks
let g:typescript_indent_disable = 1
set encoding=utf-8
set t_Co=256
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Colorscheme
colorscheme minimalist

" Generic configuration
set mouse=a
set number

" Plugin-specific configuration
let g:seiya_auto_enable=1

" Aliases

cnoreabbrev fz FZF

autocmd BufNewFile,BufRead *.avsc set filetype=json
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

