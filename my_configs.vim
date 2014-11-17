""""""""""""""""""""""""""""""
" windows ini file setting for seq scripts
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.ini,*/.hgrc,*/.hg/hgrc,*.seq setf dosini


set guifont=Consolas:h10:b:cDEFAULT
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI


""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
if has("windows")
  let Tlist_Ctags_Cmd = 'ctags'
elseif has("linux") || has("unix")
  "let Tlist_Ctags_Cmd = '/usr/bin/ctags'
  let Tlist_Ctags_Cmd = '/app/ctags/5.8/LMWP2/bin/ctags'
endif

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口

map <leader>tl :TlistToggle<cr>


""""""""""""
"airline
""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'

"""""""""""""""""""""""""""""""""
" Python-mode
" """""""""""""""""""""""""""""""""""""
" deactivate rope and using jedi
" Rope Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"
" Jedi Keys:
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "1"
let g:pymode_rope = 0
let g:jedi#use_tabs_not_buffers = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0



" TagBar setting
nmap <F8> :TagbarToggle<CR>
