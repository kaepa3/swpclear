scriptencoding utf-8

if exists('g:loaded_swpclear')
    finish
endif

let g:loaded_swpclear = 1

command! SwpClear call swpclear#execute()
