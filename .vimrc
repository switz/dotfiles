" basic
:syntax on
syntax on
:set guifont=Menlo-Regular:h14
:set number relativenumber

" pathogen
execute pathogen#infect()
call pathogen#helptags()

"colors
colorscheme sublimemonokai

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" nerdtree keybinds
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
map <leader>nn :NERDTreeToggle<CR>
map <leader>mm :NERDTreeFind<cr>
map <leader>r :NERDTreeFind<cr>

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['.git$[[dir]]', '.swp', 'node_modules$[[dir]]']

let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" keybinds
:imap jk <esc>

" tabs/indentation
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on

" js
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" lint
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}
