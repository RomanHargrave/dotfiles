execute pathogen#infect()

syntax on
filetype plugin indent on

set clipboard=unnamedplus

set splitright

" Use spaces instead of tabs + other configuration for tab spacing
set shiftwidth=4 tabstop=4 softtabstop=4 smarttab expandtab

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
nmap g<Left>        gT
nmap g<Right>       gt

nmap <Tab><Left>    <C-W><C-H>
nmap <Tab><Right>   <C-W><C-L>
nmap <Tab><Up>      <C-W><C-K>
nmap <Tab><Down>    <C-W><C-J>

" U is not very useful, so remap it to C-r
nnoremap U <C-r>

" Make exiting a terminal more pleasant
tnoremap <Esc> <C-\><C-n>

set background=dark

au BufRead,BufNewFile *.load	setfiletype fish

augroup coffee
    au!
    au BufRead,BufNewFile *.cson       set ft=coffee
    au FileType coffee                 set listchars=tab:>- list shiftwidth=2
augroup END

augroup pencil
	autocmd!
	autocmd FileType markdown,md	call pencil#init()
	autocmd FileType text		call pencil#init()
augroup END

augroup desktop
    au!
    au BufRead,BufNewFile *.ini         setfiletype desktop
    au BufRead,BufNewFile index.theme   setfiletype desktop
augroup END

if has('gui_running')
	colorscheme codeschool
else
	colorscheme SlateDark
end

map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>

set modeline

let g:python_host_prog="/usr/bin/python"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
