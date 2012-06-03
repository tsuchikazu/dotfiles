"" プラグイン管理
" setting for vundle
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

"プラグイン管理
Bundle 'gmarik/vundle'
" 補完
Bundle 'Shougo/neocomplcache'
" ファイラー系（よくわかんないやつ。だけど人気）
Bundle 'Shougo/unite.vim'
" ファイラー
"keymappingsの重複してしまったので、回避がわからず
"~/dotfiles/vimfiles/bundle/vimfiler/autoload/vimfiler/mappings.vim から
"<C-l>のkey mappingsを削除して使ってます。
Bundle 'Shougo/vimfiler'

" リファレンス
Bundle 'thinca/vim-ref'
" ツリー型ファイラ
Bundle 'The-NERD-tree'
" バッファ管理（タブ風表示）
"Bundle 'minibufexpl.vim'
" ヤンクの履歴保持
Bundle 'YankRing.vim'
" ruby on rails
Bundle 'tpope/vim-rails'
" zencoding
Bundle 'ZenCoding.vim'
" utility(囲むやつ)
Bundle 'surround.vim'

filetype plugin indent on

nnoremap <Space>r :<C-u>execute "source " expand("%:p")<CR>
nnoremap <Space>v :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
"基本設定
source ~/dotfiles/.vimrc.basic
"StatusLine設定
source ~/dotfiles/.vimrc.statusline
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


