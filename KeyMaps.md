# Neovim

## Basics
- S         :w<CR>          n           Save
- Q         :q<CR>          n           Quit
- Y         \"+y            v
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
