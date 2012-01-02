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

"Turn syntax highlighting on.
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

"Use this color scheme.
colorscheme native
