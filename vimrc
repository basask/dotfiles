"bootstrap patogem

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

" JSdoc
let g:jascript_plugin_jsdoc = 1
let g:eslint_onwrite = 1

" Airline
let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts = 1

" Powerline
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" Flake 8
let g:flake8_show_in_gutter=1
autocmd BufWritePost *.py call Flake8()

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1

" Vim markdown preview
let vim_markdown_preview_github=1

" Arduino
let g:arduino_dir = '/opt/arduino'
let g:arduino_board = 'arduino:avr:leonardo'
let g:arduino_args = '--verbose-upload'
let g:arduino_programmer = 'arduino:usbtinyisp'
let g:arduino_auto_baud = 1

let g:arduino_serial_port_globs = ['/dev/ttyACM*', '/dev/ttyUSB*']


" Disable safewrite for file watchers
set backupcopy=yes

" Better Whitespaces
autocmd BufWritePre * StripWhitespace

"highligh search
highlight Comment cterm=bold
set hlsearch

"Enable Line number
set number

"Set tabstop to 4 spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" remove dot(.) from keyworklist
set iskeyword-=.

" Enable default +register for clipboard
set clipboard+=unnamedplus

"Enable auto-indention
set autoindent

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

if has("autocmd")
    autocmd InsertEnter * set cul
    autocmd InsertLeave * set nocul

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.skeleton
endif

colorscheme basilisco

