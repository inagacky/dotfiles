" 挙動を vi 互換ではなく、Vim のデフォルト設定にする
set nocompatible
" 一旦ファイルタイプ関連を無効化する
filetype off

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/d-inagaki/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/d-inagaki/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'
call neobundle#end()

" Required:
filetype plugin indent on

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
""#####エンコード周り#####
set encoding=utf-8
set fileencodings=iso=2022-jp,euc-jp,sjis,utf-8
set fileformats=unix

""#####表示設定#####
set number               "行番号を表示する
set title                "編集中のファイル名を表示
set showmatch            "括弧入力時の対応する括弧を表示
set laststatus=2         "ステータス行を常に表示
set wrap                 "ウィンドウ越えたら折り返し表示
"autocmd ColorScheme * highlight Normal ctermbg=none
"autocmd ColorScheme * highlight LineNr ctermbg=none
"colorscheme desert      "colorの設定
syntax enable
set background=dark
"colorscheme solarized
let g:solarized_termcolors=256

syntax on                "コードの色分け
set autoindent           "改行時に前の行のインデントを継続する
set smartindent          "オートインデント
set expandtab            "タブをスペースで挿入
set showcmd              "タイプ途中のコマンドを画面最下行に表示
set shiftwidth=4         "自動インデントの幅
set ruler                "カーソルが何行目の何列目に置かれているか表示
set showmode             "現在のモードを表示
"highlight Normal ctermbg=black ctermfg=grey

""#####カーソル移動系#####
set virtualedit=block            "文字の無いところにカーソル移動する
set backspace=indent,eol,start   "バックスペースを空白、行末、行頭でも使用できるように
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする

""#####検索設定#####
set ignorecase           "大文字/小文字の区別なく検索する
set smartcase            "検索文字列が大文字始まりは区別して検索する
set wrapscan             "検索時に最後まで行ったら最初に戻る
set hlsearch             "検索文字列のハイライト
set incsearch            "リアルタイム検索

""#####ファイル処理関連#####
set confirm                   "保存してないファイルがあるときに閉じると警告出す
set noswapfile                "スワップファイルは作らない
set autoread                  "内容が変更されたら再読み込み

""####その他#####
set cursorline                          "アンダーライン
set wildmenu wildmode=list:longest,full "コマンドラインモードでTABキーによるファイル名補完有効
"文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
"現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]
"現在文字行/全体行表示
set statusline+=[L=%l/%L]
"現在行が全体行の何%目か表示
set statusline+=[%p%%]

let NERDTreeShowHidden = 1

""####キーマップ系####
"ESC 2回でハイライト終了
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
" 削除キーでyankしない
nnoremap x "_x
"セミコロン打つとコロン
nnoremap ; :
"自動で括弧を保管する
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
"filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on
