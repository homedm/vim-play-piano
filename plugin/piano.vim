"=============================================================================
" File: piano.vim
" Author: homedm
" Created: 2019-06-27
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_piano')
    finish
endif
let g:loaded_piano = 1

let s:save_cpo = &cpo
set cpo&vim

autocmd InsertCharPre * call play#piano(v:char)
autocmd InsertLeave * call sound_clear()

let &cpo = s:save_cpo
unlet s:save_cpo
