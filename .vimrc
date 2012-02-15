"We don't need compatibility with Vi.
set nocompatible

"Don't really know what this does.
set backspace=indent,eol,start

"Use 'smartindent'. 'autoindent' should be on as well.
set autoindent
set smartindent

"We don't need no backups.
set nobackup

"Keep 100 commands and 100 search patterns in history.
set history=100

"Always display the current cursor position in the lower right corner of the Vim window.
set ruler

"Show incomplete command.
set showcmd

"Show current mode.
set showmode

"Use incremental search.
set incsearch

"Turn on syntax highlighting.
syntax on

"Highlight last search matches.
set hlsearch

"Use filetype sensitive mechanisms.
filetype plugin indent on

"Don't break long lines.
set textwidth=0

"Ignore case when using an all-lower case search pattern ('ignorecase'), but not when the pattern has upper case characters ('smartcase').
set ignorecase
set smartcase

"Show 1 line around the cursor.
set scrolloff=1

"Don't wrap long lines.
set nowrap

"Highlight spelling mistakes.
"set spell
"set spelllang=en,hu

"Use visual bell instead of beeping.
set visualbell

"Set indenting length to 4.
set tabstop=4
set shiftwidth=4
set softtabstop=0	"Don't use mixed space-tab editing mode.
set noexpandtab	"Don't expand tabs to spaces.

"Show list of matches for command-line completion.
set wildmenu

"Disable preview scratch window.
set completeopt=menu

"Use this color scheme.
if filereadable($HOME."/.vim/colors/gentooish.vim")
	colorscheme gentooish
elseif filereadable($HOME."/.vim/colors/native.vim")
	colorscheme native
else
	colorscheme default
endif

"Use pathogen.
if filereadable($HOME."/.vim/bundle/vim-pathogen/autoload/pathogen.vim")
	runtime bundle/vim-pathogen/autoload/pathogen.vim
	call pathogen#infect()
endif

"clang complete options:
let g:clang_auto_select=2 "Automatically select the first entry in the popup menu, and insert it into the code.
let g:clang_complete_auto=1 "Automatically complete after ->, ., ::
"Doesn't work for some reason: let g:clang_use_library=1 "Use libclang instead of clang/clang++. See :h clang_complete-use_library for more info.
let g:clang_complete_macros=1 "If clang should complete preprocessor macros and constants.
let g:clang_complete_patterns=1 "If clang should complete code patterns, i.e loop constructs etc.
let g:clang_user_options='|| exit 0' "This overcomes the problem of not finding any matches when there are parts of the code (or includes) that clang can't compile.
