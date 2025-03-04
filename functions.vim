" Preserve cursor position when yanking
function! s:PreYank() abort
    let g:cursorPreYank = getpos('.')
    return "y"
endfunction

function! s:PreYankY() abort
    let g:cursorPreYank = getpos('.')
    return "y$"
endfunction
nnoremap <expr> y <SID>PreYank()
xnoremap <expr> y <SID>PreYank()
nnoremap <expr> Y <SID>PreYankY()

augroup YankRestore
    autocmd!
    autocmd TextYankPost * if exists("g:cursorPreYank") |
                \ call setpos('.', g:cursorPreYank) |
                \ unlet g:cursorPreYank |
                \ endif
augroup END


function! CopyLine()
    if mode() ==# 'n'
        normal! ^v$"+y
    else
        normal! "+y
    endif
endfunction


function! YankInsideMarks()
    if mode() ==# 'n'
        normal! `Av`B"+y
    endif
endfunction

function! YankAll()
    normal! ggVG"+y
endfunction
