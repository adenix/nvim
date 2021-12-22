" -----[ Plugin Management ]----------------------------------------------------
call plug#begin()
Plug 'tpope/vim-sensible'

" Status/Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Netrw
Plug 'tpope/vim-vinegar'

" Git
Plug 'airblade/vim-gitgutter'

" Synatax/Language Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'uarun/vim-protobuf'
Plug 'hashivim/vim-terraform'
Plug 'editorconfig/editorconfig-vim'

" Code Helpers
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" -----[ Tab Settings ]---------------------------------------------------------
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set shiftround
set smarttab

filetype plugin indent on

" -----[ Line Numbers ]---------------------------------------------------------
set number

" -----[ vim-airline ]----------------------------------------------------------
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_powerline_fonts = 1
endif

" -----[ netrw ]----------------------------------------------------------------
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

" -----[ Go Shortcuts ]---------------------------------------------------------
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>d <Plug>(go-debug-breakpoint)
autocmd FileType go nmap <leader>[ <Plug>(go-debug-continue)
autocmd FileType go nmap <leader>] <Plug>(go-debug-next)
autocmd FileType go nmap <leader>; <Plug>(go-debug-step)
autocmd FileType go nmap <leader>' <Plug>(go-debug-stepout)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>v <Plug>(go-coverage-browser)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" -----[ Code Completion ]------------------------------------------------------
let g:deoplete#enable_at_startup = 1
