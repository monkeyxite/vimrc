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
