" キー設定
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

noremap <TAB> gt
noremap <S-TAB> gT

noremap j gj
noremap k gk

" delete
noremap! <C-?> <Right><C-h>

" backspace
set backspace=indent,eol,start

" インデント
noremap mm gg=G<C-o><C-o>

inoremap < <><Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

"inoremap {<CR> {}<Left><CR><ESC><S-o>
"inoremap (<CR> ()<Left><CR><ESC><S-o>

nnoremap -- :s/\(^\s*\)/\1\/\//<CR>:s/\(^\s*\)\/\/\/\//\1/<CR>
vnoremap -- :s/\(^\s*\)/\1\/\//<CR>:'<,'>s/\(^\s*\)\/\/\/\//\1/<CR>
nnoremap mc :let<Space>@z=@@<CR>%vey%p:let<Space>@@=@z<CR>a><ESC>%a/<ESC><Left>i
