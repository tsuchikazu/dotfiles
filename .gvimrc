set guifontwide=Osaka:h12
set guifont=Osaka-Mono:h14
"全角スペースを視覚化
"highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
"au BufNewFile, BufRead * match ZenkakuSpace /　/
""常にタブを表示
"set showtabline=2
"透明度を変更
set transparency=0
"map  gw :macaction selectNextWindow:
"map  gW :macaction selectPreviousWindow:
colorscheme torte

" 縦幅　デフォルトは24
set lines=50
" 横幅　デフォルトは80
set columns=160

" 補完候補の色づけ for vim7
"hi Pmenu guibg=white guifg=darkgray
"hi PmenuSel guibg=blue guifg=white
"hi PmenuSbar guibg=0 guifg=9
hi Pmenu        guibg=#f5f5dc   guifg=#000000
hi PmenuSel     guibg=#0000ff   guifg=#ffffff
hi PmenuSbar    guibg=#aaaaaa
hi PmenuThumb   guifg=#0000ff
