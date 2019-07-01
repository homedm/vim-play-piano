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

let g:piano_sounds_directory = {
            \ 'q': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_1do.wav'),
            \'w': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_2re.wav'),
            \'e': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_3mi.wav'),
            \'r': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_4fa.wav'),
            \'t': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_5so.wav'),
            \'y': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_6ra.wav'),
            \'u': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_7si.wav')
            \}

command! StartPiano call piano#start()
command! StopPiano call piano#stop()

function! piano#start() abort
    augroup piano
        autocmd!
        autocmd InsertCharPre * :call piano#play(v:char)
        autocmd InsertLeave * :call sound_clear()
    augroup END
endfunction

function! piano#stop() abort
    augroup piano
        autocmd!
    augroup END
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
