filetype plugin indent on

set nocompatible
let python_slow_sync = 1

set ts=4
set relativenumber
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set t_Co=256
set wildmenu
set wildmode=list:longest
set wcm=<Tab>
set incsearch
set hlsearch
colorscheme koehler

function SetSmallIndent()
    set ai
    set ts=2
    set shiftwidth=2
    set softtabstop=2
endfunction

function SetSmallIndentR()
    call SetSmallIndent()
    silent! %s/\s\{4\}/\t/g
    silent! %s/\t/  /g
endfunction

function ResetIndent()
    set ai
    set ts=4
    set shiftwidth=4
    set softtabstop=4
endfunction

function ResetIndentR()
    call ResetIndent()
    silent! %s/\s\{2\}/\t/g
    silent! %s/\t/    /g
endfunction

command! SetSmallIndent call SetSmallIndent()
command! ResetIndent call ResetIndent()
command! SetSmallIndentR call SetSmallIndentR()
command! ResetIndentR call ResetIndentR()
