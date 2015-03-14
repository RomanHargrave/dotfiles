execute pathogen#infect()

syntax on
filetype plugin indent on

set clipboard=unnamedplus

set splitright

set shiftwidth=4
set tabstop=4
set softtabstop=4
set foldmethod=marker
set backspace=2

let g:airline_powerline_fonts = 1

" neocompletecate settings
" let g:neocompletecache_enable_at_startup = 1
" let g:neocompletecache_enable_smart_case = 1
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><C-l> neocomplcache#complete_common_string()

nmap <Leader>g :TagbarToggle<CR>
nmap <Leader>b :Unite buffer<CR>
nmap <Leader>t :Unite file buffer<CR>

set background=dark

if has('gui_running')
	colorscheme codeschool
else
	colorscheme SlateDark
end

map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>

let g:python_host_prog="/usr/bin/python"
