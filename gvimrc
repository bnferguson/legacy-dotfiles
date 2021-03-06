
" Command-T for CtrlP
map <D-t> :CtrlP<CR>
imap <D-t> <Esc>:CtrlP<CR>

" Command-Shift-F for Ack
map <D-F> :Ack<space>

" Command-/ to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

" Command-][ to increase/decrease indentation
vmap <D-]> >gv
vmap <D-[> <gv


" Start without the toolbar
set guioptions-=T

set guifont=Bitstream\ Vera\ Sans\ Mono


" No audible bell, no visual bell
set novb

" Use console dialogs and that's it sucka
set guioptions=c

"set lines=50 columns=200

if has("gui_macvim")
  "macmenu &File.New\ Tab key=<nop>
  set vb

  macmenu &File.New\ Tab key=<D-T>

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " requires NERDTree
  nmap <D-d> :NERDTreeToggle<CR>

  set guifont=Bitstream\ Vera\ Sans\ Mono:h12
  set transparency=0

  if has("gui_running")
    set fuoptions=maxvert,maxhorz
  endif
end

if has("gui_running")
  set lines=999
  set columns=999
endif

