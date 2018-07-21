" settings

" 文字コードをUTF-8に
set fenc=utf-8

" バックアップファイルをつくらない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読みなおす
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" 予測変換
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

" 見た目

" カラースキームをmorokaiに
syntax on
colorscheme molokai
set t_Co=256

" 行番号の表示
set number

" 現在の行を強調表示
"set cursorline

" 現在の行を強調表示（縦）
"set cursorcolumn

" 行末の１文字先までカーソルを移動できるように
set virtualedit=onemore

" スマートインデント
set smartindent

" ビープ音を可視化
set visualbell

" カッコ入力時の対応するカッコを強調
set showmatch

" ステータスラインを常に表示
set laststatus=2

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 下10行余裕があるうちにスクロール
set scrolloff=10


" 操作系

" Esc.をjjに
inoremap jj <ESC>

" Tab系

" 不可視文字を可視化
set list listchars=tab:\▶\-

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅
set tabstop=4

" 行頭でのTab文字の表示幅
set shiftwidth=4


" 移動系

" 行頭をH、行末をLで移動
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $


" 検索系

" 検索文字列の大文字小文字の区別なし
set ignorecase

" 検索時に最後までいったら最初に戻る
set incsearch

" 検索語をハイライト表示
set hlsearch

" ESC連打でハイライト解除
"nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap  ff :nohlsearch<CR><Esc>

" クリップボードを共通化
set clipboard+=unnamed
