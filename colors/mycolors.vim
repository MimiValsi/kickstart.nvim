set background=dark
highlight clear

if exists("syntax_on")
        syntax clear
endif

hi Normal guifg=#00aa00
hi Visual guibg=#34373b
hi String guifg=#00b000
hi Character guifg=#cf0000
hi Number guifg=#ffa500
hi Identifier guifg=#bbb000
hi Comment guifg=#b27300
hi Function guifg=#f0f090
hi Operator guifg=#f010b0 " * -> ? : = ! + -
hi keyword guifg=#1ff0c0 " for if/else const typedef struct include while

