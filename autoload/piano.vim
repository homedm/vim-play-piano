"=============================================================================
" File: piano.vim
" Author: homedm
" Created: 2019-06-27
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_piano')
    finish
endif
let g:loaded_piano = 1

let s:save_cpo = &cpo
set cpo&vim

function! piano#play(kind) abort
    if has_key(g:piano_sounds_directory, a:kind) 
        call sound_playfile(g:piano_sounds_directory[a:kind])
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
