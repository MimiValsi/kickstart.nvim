set background=dark
highlight clear

if exists("syntax_on")
        syntax clear
endif

hi Normal guifg=#009b00
hi Visual guibg=#34373b
hi String guifg=#00a000
hi Character guifg=#900000
hi Number guifg=#ffa500
hi Identifier guifg=#bbb000
hi Comment guifg=#b27300
hi Function guifg=#eaff90
hi Operator guifg=#c00c8c" * -> ? : = ! + -
hi keyword guifg=#09cfb0 " for if/else const typedef struct include while

