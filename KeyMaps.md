# Neovim

## Basics
- S         :w<CR>          n           Save
- Q         :q<CR>          n           Quit
- Y         \"+y            v           Copy to the system clip board
- `         ~               n,v         Toggle upper case

## Movement
- K         5k              n,v         Cursor up 5 lines
- J         5j              n,v         Cursor down 5 lines
- H         0               n,v         Cursor to the front of the line
- L         $               n,v         Cursor to the end of the line
- gk                                    Cursor up with wrapped line
- gj                                    Cursor down with wrapped line
- <C-k>     5<C-y>          n,v         Scroll window up
- <C-j>     5<C-e>          n,v         Scroll window down
- ,         %               n,v         Move cursor between (), {}
- c,        c%              n,v         Change left to (, {
- \v        v0              n           Visual to the front of the line
- v\        v$h             n           Visual to the end of the line
- <C-a>     <ESC>A          i           Edit at the end of the line
- <C-b>     <ESC>A {}<ESC>i<CR><ESC>ko          i           Insert {} at the end of line and edit betweent it

## Window
- <leader>w <C-w>w          n           Go to N next window
- T         :tabe<CR>                   Open a empty tab
- tt        :tab split<CR>              Open a new tab with current buffer
- t<left>   :-tabnext<CR>               Previous tab
- t<right>  :+tabnext<CR>               Next tab
- t<up>     :-tabmove<CR>               Move current tab left
- t<down>   :+tabmove<CR>               Move current tab right
- sk                                    Split up
- sj                                    Split down
- sh                                    Split left
- sl                                    Split right
- <up>                                  Enlarge window vertically
- <down>                                Shrink window vertically
- <left>                                Shrink window horizontally
- <right>                               Enlarge window horizontally

## Nvim-Tree
- te       :NvimtreeToggle<CR>         n,v         Toggle Nvim-Tree
### In Nvim-Tree window
- <C-e>         Open inplace
- t             Open new tab
- o             Open
- <CR>          Open no window picker
- <TAB>         Open preview
- <C-v>         Open vertical split
- <C-x>         Open horizontal split

- a             Add
- d             Delete
- r             Rename
- c             Copy
- x             Cut
- p             Paste
- y             Copy name
- Y             Copy relative name
- gy            Copy absolute name

- <BS>          Close directory
- J             Last sibling
- K             First sibling
- P             Parent directory
- W             Collapse
- E             Expand all
- <C-p>         Change root directory to parent
- S             Search

## Terminal
- <C-\>         Toggleterminal
