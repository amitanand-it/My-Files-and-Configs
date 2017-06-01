filetype plugin on
"runtime macros/matchit.vim
"

set number
set relativenumber
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showcmd
set wildmenu
set wildmode=list:longest,full
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
set wrap

let mapleader = ","
"let maplocalleader = ";"
"let maplocalleader = "\<Space>"
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85
" caW""<Esc>P
"
set path+=$PWD/**
nnoremap gf :exe 'find' substitute(expand('<cfile>'), '^/', '', '')<CR>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
nnoremap <leader>t :tabnew test.pl<cr>
"nnoremap <leader>tt :tabnew pl<cr>

" nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<CR>


nnoremap <leader>/ :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

 inoremap <leader>bf <%filter><CR>unless($m->aborted()){<CR>$_ = Utils::FillInForm->new->fill ( scalarref => \$_, fdat =>   \%ARGS,);<CR>}<CR></%filter><CR>
 inoremap <leader>bh <%flags><CR>inherit=>'/syshandler'<CR></%flags><CR>
 inoremap <leader>ba <%args><CR></%args><ESC>ko
 inoremap <leader>bp <%perl><CR></%perl><ESC>ko
 inoremap <leader>bd <%doc><CR></%doc><ESC>ko
 inoremap <leader>ii <% %><ESC>hhi 
 inoremap <leader>dda print "<pre>",Data::Dumper->Dump([ ]),"</pre>";<ESC><S-B><Insert>
 inoremap <leader>dds print STDERR "\n\n",Data::Dumper->Dump([ ]),"\n\n";<ESC><S-B><Insert>
 nnoremap <leader>bf i<%filter><CR>unless($m->aborted()){<CR>$_ = Utils::FillInForm->new->fill ( scalarref => \$_, fdat =>   \%ARGS,);<CR>}<CR></%filter><CR>
 nnoremap <leader>bh i<%flags><CR>inherit=>'/syshandler'<CR></%flags><CR>
 nnoremap <leader>ba i<%args><CR></%args><ESC>ko
 nnoremap <leader>bp i<%perl><CR></%perl><ESC>ko
 nnoremap <leader>bd i<%doc><CR></%doc><ESC>ko
 nnoremap <leader>ii i<% %><ESC>hhi
 nnoremap <leader>dda iprint "<pre>",Data::Dumper->Dump([ ]),"</pre>";<ESC><S-B><Insert>
 nnoremap <leader>dds iprint STDERR "\n\n",Data::Dumper->Dump([ ]),"\n\n";<ESC><S-B><Insert>
" 
"nnoremap <localleader>tdb :r ~/.vim/skeleton_dbi.pl<cr>
"nnoremap <localleader>tdbix :r ~/.vim/skeleton_dbix.pl<cr>
"
" "===========================================================================================
" 
"====== set paste mode automatically when try to paste anything ==============
" let &t_SI .= "\<Esc>[?2004h"
" let &t_EI .= "\<Esc>[?2004l"
" 
" inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" 
" function! XTermPasteBegin()
"   set pastetoggle=<Esc>[201~
"   set paste
"   return ""
" endfunction
"=============================================================================

nnoremap <leader>" ciW"<esc>pa"<space>
nnoremap <leader>' ciW'<esc>pa'<space>
nnoremap <leader>( ciW(<esc>pa)<space>
nnoremap <leader>) ciW(<esc>pa)<space>
nnoremap <leader>{ ciW{<esc>pa}<space>
nnoremap <leader>} ciW{<esc>pa}<space>

nnoremap <leader>p iprint "\n \n";<ESC><S-B><Insert>
nnoremap <leader>ps iprint STDERR "\n \n";<ESC><S-B><Insert>

nnoremap <leader>ss :!./stopall && ./startall<cr>
nnoremap <leader>rp :!clear && echo && perl %<cr>
nnoremap <leader>. :set number!<cr>
nnoremap <leader>.r :set relativenumber!<cr>
nnoremap <leader>sm :set syntax=mason<cr>

vnoremap <leader>cp :s!^!# !<CR>:nohlsearch<CR>
vnoremap <leader>cm :s!^!%# !<CR>:nohlsearch<CR>
vnoremap <leader>cj :s!^!// !<CR>:nohlsearch<CR>
nnoremap <leader>cp :s!^!# !<CR>:nohlsearch<CR>
nnoremap <leader>cm :s!^!%# !<CR>:nohlsearch<CR>
nnoremap <leader>cj :s!^!// !<CR>:nohlsearch<CR>

nnoremap <leader>w :w!<CR>
nnoremap <leader>ft vatzf
nnoremap <leader>fB va{zf
nnoremap <leader>fb va(zf

nnoremap N Nzz
nnoremap n nzz

"highlight current line
set cul
hi CursorLine term=none cterm=none ctermbg=195


let s:comment_map = {
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "sh": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "vim": '"',
    \   "perl": '#',
    \   "html": '%#',
    \   "mason": '%#',
    \ }


function! Comment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]

        if getline('.') =~ "^\\s*\\(#\\|%#\\|\"\\|//\\)"
            "uncomment
            "execute "silent s!^\\(#\\|//\\|%#\\|\"\\)\\(\\s\\)!\\2!"
            execute "silent s!^\\(#\\|//\\|%#\\|\"\\)\\s\\{0,1\\}!!"
        else
            if &filetype =~ "html"
                execute "silent"
            else
            "Comment the line
                execute "silent s/^/" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction

nnoremap <leader>cc :call Comment()<cr>
vnoremap <leader>cc :call Comment()<cr>


if has("autocmd")

" augroup group_templates
" autocmd!
" autocmd BufNewFile  *.pl  0r ~/.vim/skeleton.pl
" augroup END
" 
augroup group_pl
autocmd!
autocmd BufNewFile *.pl
\ 0put = '#!/usr/bin/perl -w'  |
\ 1put = 'use strict;' |
\ $put = '' |
\ norm gg19jf]
" autocmd BufNewFile *.pl silent !chmod +x %
augroup END

augroup group_sh
autocmd!
autocmd BufNewFile *.sh
\ 0put = '#!/bin/bash'  |
\ $put = '' |
\ norm gg19jf]
"autocmd BufWritePost *.sh silent !chmod +x %
augroup END

augroup group_html
autocmd!
au BufNewFile,BufRead *.html set ft=mason
augroup END

" 
" " Vimscript file settings ---------------------- {{{
" " augroup filetype_vim
" "     autocmd!
" "     autocmd FileType vim setlocal foldmethod=marker
" " augroup END
" " }}}
endif
" 
" 
set dictionary+=/opt/practice/.vim/words.txt

"set verbose=9
