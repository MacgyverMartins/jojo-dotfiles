if has('gui_running')
  set columns=150
  set guioptions-=m  " hide the menu bar
  set guioptions-=t  " hide the toolbar
  set guioptions-=r  " hide the right-hand scroll bar
  set guioptions-=l  " hide the left-hand scroll bar
  set guioptions-=l  " hide the left-hand scrollbar for splits/new windows
  set guioptions-=r  " hide the right-hand scrollbar for splits/new windows
  set guioptions-=L  " hide the left scrollbar from NERDTree
  set guioptions-=b
  " shows/hides menu bar on ctrl-f1
  if has('gui_gtk2')
    set cmdheight=1
    let g:ackprg="ack-grep -H --nocolor  --nogroup --column"
  end
  if has('gui_macvim')
    "set transparency=6
    set transparency=0
    macmenu &File.New\ Window key=<nop>
    macmenu File.Print key=<nop>
    macmenu Window.Minimize key=<nop>
    macmenu Tools.List\ Errors key=<nop>
    macmenu Edit.Find.Find\.\.\. key=<nop>
    macmenu Window.Select\ Next\ Tab key=<nop>

    "set macmeta

    nmap <silent> <D-d> <c-d>zz
    nmap <silent> <D-e> <c-u>zz
    nmap <silent> <D-D> <c-f>zz
    nmap <silent> <D-E> <c-b>zz
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929

    noremap <d-p> :CtrlP<cr>
    imap <D-l> <c-x><c-f><down>
    imap <D-j> <c-n>
    imap <D-k> <c-p>

  "transparency
  map  <silent> <d-S-[> :set transparency-=1<cr>
  map  <silent> <d-S-]> :set transparency+=1<cr>
  noremap  <silent> <d-]> :bnext<cr>
  noremap  <silent> <d-[> :bprev<cr>

    "inoremap <expr> <d-j> pumvisible() ? '<d-n>' :
          "\ '<c-n><c-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

    "inoremap <expr> <M-,> pumvisible() ? '<d-n>' :
          "\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

    "" open omni completion menu closing previous if open and opening new menu without changing the text
    "inoremap <expr> <d-m> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
          "\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
    "" open user completion menu closing previous if open and opening new menu without changing the text
    "inoremap <expr> <D-M> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
          "\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

    noremap zl zL
    noremap zh zH

    noremap <D-i> zL
    noremap <D-o> zH
    set  colorcolumn=120
    set fuoptions=maxvert,maxhorz
    "let b:vm_guibg="green"
    set lines=999 columns=120
    set showbreak=↪

    "resize windows
    nnoremap <silent> <D-up> :exe "resize " . (winheight(0) * 4/3)<cr>
    nnoremap <silent>  <D-down> :exe "resize " . (winheight(0) * 3/4)<cr>
  end
else
  "set t_co=256
  set cmdheight=1
endif

