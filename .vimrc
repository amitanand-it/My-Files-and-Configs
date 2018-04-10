filetype plugin on
"runtime macros/matchit.vim
"
set path+=$PWD/**

set number
"set relativenumber
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
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

inoremap jk <Esc>
"nnoremap gf :exe 'find' substitute(expand('<cfile>'), '^/', '', '')<CR>
nnoremap j gj
nnoremap k gk

nnoremap <leader>t :tabnew test.pl<cr>
"nnoremap <leader>tt :tabnew pl<cr>

" nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<CR>


nnoremap <leader>/ :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %

" open last command vis as perl line no.
" "===========================================================================================
" inoremap <leader>dbh my $dbh = &UtilsDB::db_connect (DB_USER=>'tradein_dev',DB_PASS=>'ti_hacker', DB_HOST=>'127.0.0.1',DB_NAME=> 'tradein_clients',ATTR =>{ 'AutoCommit'=>1,'RaiseError'=>1,});<cr>
" inoremap <leader>dbix my $dbix_schema = DBSchema:__SCHEMA__->connect(sub { &UtilsDB::db_connect(ATTR=>{'AutoCommit'=>1, 'RaiseError'=>1, pg_server_prepare=>0}) },{on_connect_do => ['SET search_path =public,general; SET default_transaction_read_only TO false;']});
" inoremap <leader>rs my $rs = $dbix_schema->resultset('');<ESC>hhi
 inoremap <leader>bf <%filter><CR>unless($m->aborted()){<CR>$_ = Utils::FillInForm->new->fill ( scalarref => \$_, fdat =>   \%ARGS,);<CR>}<CR></%filter><CR>
 inoremap <leader>bh <%flags><CR>inherit=>'/syshandler'<CR></%flags><CR>
 inoremap <leader>ba <%args><CR></%args><ESC>ko
 inoremap <leader>bp <%perl><CR></%perl><ESC>ko
 inoremap <leader>bd <%doc><CR></%doc><ESC>ko
 inoremap <leader>ii <% %><ESC>hhi 
 inoremap <leader>dda print "<pre>",Data::Dumper->Dump([ ]),"</pre>";<ESC><S-B><Insert>
 inoremap <leader>dds print STDERR "\n\n",Data::Dumper->Dump([ ]),"\n\n";<ESC><S-B><Insert>
" nnoremap <leader>dbh imy $dbh = &UtilsDB::db_connect (DB_USER=>'tradein_dev',DB_PASS=>'ti_hacker', DB_HOST=>'127.0.0.1',DB_NAME=> 'tradein_clients',ATTR =>{ 'AutoCommit'=>1,'RaiseError'=>1,});<cr>
" nnoremap <leader>dbix imy $dbix_schema = DBSchema:__SCHEMA__->connect(sub { &UtilsDB::db_connect(ATTR=>{'AutoCommit'=>1, 'RaiseError'=>1, pg_server_prepare=>0}) },{on_connect_do => ['SET search_path =public,general; SET default_transaction_read_only TO false;']});
" nnoremap <leader>rs imy $rs = $dbix_schema->resultset('');<ESC>hhi
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
set dictionary+=/home/amitanand/.vim/words.txt

"set verbose=9







let s:well_defined_modules_hash = {
    \   "$b2bglobal{current_user}" : 'B2B::User',
    \   "$b2bglobal{current_employee}" : 'Erp::Employee',
    \   "$b2bglobal{current_profile}" : 'B2B::Company',
    \ }

function! Find()

    let name = ''
    let find_name = ''
    let text_to_search = ''
    let current_line = getline(".")

    execute "silent normal! ma0f/" 
    let name=expand('<cfile>')
    execute "silent normal! `a" 

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    "CASE1: checking for files under the cursor matching with .html and forward slash ('/')
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    if(!empty(matchstr(name,'^/\w')))
            let find_name = name
    elseif(!empty(matchstr(current_line, '\w\+\.html')))
            let matched_list = matchlist(current_line, '\w\+\.html')
            if(!empty(matched_list))
                let find_name = 'mason.*/' . matched_list[0]
            endif

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    "CASE2: checking for modules on the current line 
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    elseif(!empty(matchstr(current_line,'::')))

        """"""""""""""""""""""""""""""""""""""""""""""""""""""
        "getting module name without changing cursor position 
        execute "silent normal! ma0f:" 
        let module_name=expand('<cfile>')
        execute "silent normal! `a" 
        """"""""""""""""""""""""""""""""""""""""""""""""""""""

        let module_name = substitute(module_name,'\W\+$','','g')
        let module_name = substitute(module_name,'.\{-}=.\{-}\(\w\+:\)','\1','g')

        if(!empty(module_name))
            """"""""""""""""""""""""""""""""""""""""""""""""""""""
            "getting variable or function names on current line
            let matched_list = matchlist(module_name, '^\(.*\)::\(\l.*\|\u\u.*\)$' )
            if(!empty(matched_list))
                let module_name = matched_list[1]
                let text_to_search = matched_list[2]
            elseif(!empty(matchstr(getline("."),'new\s\+' . module_name)))
                let text_to_search = 'new'
            else
                let matched_list = matchlist(getline(".") , module_name . '\W*\(\w*\)')
                if(!empty(matched_list))
                    let text_to_search = matched_list[1]
                endif
            endif
            """"""""""""""""""""""""""""""""""""""""""""""""""""""
        endif

        let find_name = module_name

    elseif(!empty(matchstr(current_line,'use\s\+\u\w\+')))
        let matched_list = matchlist(current_line, 'use\s\+\(\u\w\+\)')
        let find_name = matched_list[1]


    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    "CASE3: checking variables on current line to get module names
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    elseif(!empty(matchstr(current_line,'[$@][_a-zA-Z0-9}{]\+\s*=.*\$\w\+')))

        let matched_list = matchlist(current_line, '^.*\([$@][_a-zA-Z0-9}{]\+\)\s*=')
        let variable_name = matched_list[1]

        let matched_list = matchlist(current_line, '\s*->\s*\(\w\+\)')
        if(!empty(matched_list)) 
            let text_to_search = matched_list[1]
        endif
        
        execute "silent normal! ma"
        while(1)
            if(variable_name =~ 'b2bglobal')
                let matched_list = matchlist(current_line, '\$b2bglobal{.\{-}}')
                let module_name = matched_list[0]
                try
                execute | let find_name = s:well_defined_modules_hash[module_name] |  catch
                endtry
                break
            endif

            try
            execute "silent normal! gg/^[^#]*" . variable_name . ".*\=\<cr>"
            catch 'Pattern not found'
                break
            endtry




            let current_line = getline(".")

            let matched_list = matchlist(current_line, variable_name .  '[^=]\{-}=[^:]\{-}\(\$\w\+\)')
            if(!empty(matched_list))
                let old_variable_name = variable_name
                let variable_name = matched_list[1]
                if(old_variable_name != variable_name)
                    continue
                endif
            endif

            try 
            execute "silent normal! gg/^[^#]*" . variable_name . "\\s*\=.*::.*\<cr>"
            catch 'Pattern not found'
                break
            endtry

            execute "silent normal! 0f:" 
            let module_name=expand('<cfile>')
            let module_name = substitute(module_name,'\W\+$','','g')
            let module_name = substitute(module_name,'.\{-}=.\{-}\(\w\+:\)','\1','g')
            if(!empty(module_name))
                let find_name = module_name
                """"""""""""""""""""""""""""""""""""""""""""""""""""""
                if(empty(text_to_search))
                    "getting variable or function names on current line
                    let matched_list = matchlist(module_name, '^\(.*\)::\(\l.*\|\u\u.*\)$' )
                    if(!empty(matched_list))
                        let module_name = matched_list[1]
                        let text_to_search = matched_list[2]
                    elseif(!empty(matchstr(getline("."),'new\s\+' . module_name)))
                       let text_to_search = 'new'
                    else
                        let matched_list = matchlist(getline(".") , module_name . '\W*\(\w*\)')
                        if(!empty(matched_list))
                            let text_to_search = matched_list[1]
                        endif
                    endif
                endif
                """"""""""""""""""""""""""""""""""""""""""""""""""""""
                break
            endif

            " It will never reach to this code but just for sake of extra safety 
            if(getline(".") == current_line)
                break
            endif


        endwhile
        execute "silent normal! `a" 

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
    "CASE4: checking for dbix module names
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"     elseif(!empty(matchstr(current_line,'[$@][_a-zA-Z0-9}{]\+\s*=.*\$\w\+')))
    elseif(!empty(matchstr(current_line,'resultset')))
        let matched_list = matchlist(current_line,'resultset([''"]\(\w\+\)[''"]')
        let find_name = matched_list[1]
    endif

    if(empty(find_name))
        echo "-:!! ... NO FILES FOUND TO OPEN !!:- 1111" 
        return
    endif

    if(empty(matchstr(find_name,'/\|.html$')))
        let find_name = '/' . substitute(find_name,'::','/','g') . '.pm'
    endif

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "searching processing starts from here
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let cmd = "find 2>/dev/null | grep -vP '\.(obj|swp)$' | grep '".find_name."' | perl -ne 'print \"$.\\t$_\"'"
    let l:list=system(cmd)
    let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
    if l:num < 1
        echo "-:!! ".find_name." NOT FOUND !!:-" 
        return
    elseif l:num != 1
        echo l:list
        let l:input=input("Which ? (Enter=nothing)\n")
        if strlen(l:input)==0
          return
        elseif strlen(substitute(l:input, "[0-9]", "", "g"))>0
          echo "-:!! NOT A NUMBER !!:-" 
          return
        elseif l:input<1 || l:input>l:num
          echo "-:!! OUT OF RANGE !!:-" 
          return
        endif
        let l:line=matchstr("\n".l:list, "\n".l:input."\t[^\n]*")
    else
        let l:line=l:list
    endif
    let l:line=substitute(l:line, "^[^\t]*\t", "", "")

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " adding text to search on line to open module with that text search
    if !empty(text_to_search)
        let matched=matchstr(text_to_search,'^\u\u')
        if(!empty(matched))
                let line_prefix = '+\/\\(' . text_to_search .  '\\)\\\C'
        else
                let line_prefix = '+\/\\(sub\ '. text_to_search . '\\|' . text_to_search .  '\\)\\\C'
        endif
        let l:line=  line_prefix  . ' ' .   l:line
    endif
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    
"     returnning instead of running command from here as search will get
"     highligted only when function gets completed
"     return ":e " . l:line    

"     return "normal! :e " . l:line . "\<cr>"   
    try
    execute ':e ' . l:line  
    catch 'Pattern not found'
        echo "-:!! ". text_to_search . " NOT FOUND !!:-" 
    catch 'No write since last change'
        echo "-:!! PLEASE SAVE YOUR FILE FIRST !!:-" 
      Auto Save Feature if required uncomment below lines
      execute ':w! %'  
      execute ':e ' . l:line  
    endtry

endfunction

nnoremap gf :call Find()<cr>


