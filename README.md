## piano.vim
need +sound feature.

In insert mode you typed 'q', Vim would play 'do' such as piano.
you also typed 'w', Vim would play 're',

if you customise sound, change global variable, type is Dictionary Type.
it's name is g:piano_sounds_directory.

``` vim script
let g:piano_sounds_directory = {
            \ 'q': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_1do.wav'),
            \'w': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_2re.wav'),
            \'e': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_3mi.wav'),
            \'r': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_4fa.wav'),
            \'t': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_5so.wav'),
            \'y': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_6ra.wav'),
            \'u': expand('$HOME/vim/plugin/piano.vim/sounds/se_maoudamashii_instruments_piano2_7si.wav')
            \}
```

## installation
```vim
Plug 'homedm/vim-play-piano'
```

## Usage
when you play piano on Vim

```
:StartPiano
```

## sounds
デフォルトの音声ファイルは、[魔王魂](https://maoudamashii.jokersounds.com/link.html) 様からお借りしております。
