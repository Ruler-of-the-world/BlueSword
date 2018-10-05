"文字コードをUFT-8に設定
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix

syntax on
colorscheme default

" バックアップファイルを作らない
" set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" 入力中のコマンドをステータスに表示する
set showcmd
"ビープ音すべてを無効にする
set visualbell t_vb=

" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
set matchpairs& matchpairs+=':'

" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap

" タブ/インデントの設定
set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set shiftwidth=2  " 自動インデントでずれる幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" 自動補完機能
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-P>\<C-N>'"
endfor

" 補完時のメッセージを消す
set shortmess+=c

" 辞書ファイルからの補完を有効にする
set complete+=k
