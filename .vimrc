"" プラグイン管理
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/usr0600249/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
" 補完
NeoBundle 'Shougo/neocomplcache'
" ファイラー系（よくわかんないやつ。だけど人気）
NeoBundle 'Shougo/unite.vim'
" unite.vimのrails用プラグイン
NeoBundle 'basyura/unite-rails'
" uniteのmruリソースに必要
NeoBundle 'Shougo/neomru.vim'
" ファイラー
"keymappingsの重複してしまったので、回避がわからず
"~/dotfiles/vimfiles/bundle/vimfiler/autoload/vimfiler/mappings.vim から
"<C-l>のkey mappingsを削除して使ってます。
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" リファレンス
NeoBundle 'thinca/vim-ref'
" ツリー型ファイラ
NeoBundle 'The-NERD-tree'
" バッファ管理（タブ風表示）
"NeoBundle 'minibufexpl.vim'
" ヤンクの履歴保持
NeoBundle 'YankRing.vim'
" ruby on rails
NeoBundle 'tpope/vim-rails'
" zencoding
NeoBundle 'ZenCoding.vim'
" utility(囲むやつ)
NeoBundle 'surround.vim'
" wordpress 投稿
NeoBundle "vim-scripts/VimRepress"
" markdown ハイライト
NeoBundle 'tpope/vim-markdown'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'stephpy/vim-php-cs-fixer'
" status line
NeoBundle 'itchyny/lightline.vim'
" 置換
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-operator-replace'

NeoBundle 'kchmck/vim-coffee-script'

" Typescript
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'jason0x43/vim-js-indent'
NeoBundle 'clausreinke/typescript-tools'

" 構文チェック
NeoBundle 'scrooloose/syntastic'

NeoBundle 'othree/html5.vim'
" endの補完
NeoBundle 'tpope/vim-endwise'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

nnoremap <Space>r :<C-u>execute "source " expand("%:p")<CR>
nnoremap <Space>v :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
"基本設定
source ~/dotfiles/.vimrc.basic
"StatusLine設定
" source ~/dotfiles/.vimrc.statusline
"インデント設定
source ~/dotfiles/.vimrc.indent
"表示関連
source ~/dotfiles/.vimrc.apperance
"補完関連
source ~/dotfiles/.vimrc.completion
"Tags関連
source ~/dotfiles/.vimrc.tags
"検索関連
source ~/dotfiles/.vimrc.search
"移動関連
source ~/dotfiles/.vimrc.moving

"Color関連
source ~/dotfiles/.vimrc.colors
"編集関連
source ~/dotfiles/.vimrc.editing
"エンコーディング関連
source ~/dotfiles/.vimrc.encoding
"その他
source ~/dotfiles/.vimrc.misc
"プラグインに依存するアレ
source ~/dotfiles/.vimrc.plugins_setting


