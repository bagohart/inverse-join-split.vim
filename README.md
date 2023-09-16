# Inverse-Join-Split.vim
This Vim plugin provides actions for inverse joining or splitting lines.

# What does it do?
`(|)` is the cursor. 
- Inverse join: Turn `foo\n(|)bar`  into `bar (|)foo`
- Inverse split: Turn `foo (|)bar` into `(|)bar\nfoo`
Both mappings accept counts and are repeatable with `.` without dependency on
[vim-repeat](https://github.com/tpope/vim-repeat)

# Mappings
No mappings are created automatically. Add your own. I use:
```vim
nmap gJ <Plug>(inverse-join)
nmap gS <Plug>(inverse-split)
```
or using `init.lua`:
```lua
vim.keymap.set('n', 'gJ', '<Plug>(inverse-join)')
vim.keymap.set('n', 'gS', '<Plug>(inverse-split)')
```

# Requirements
Developed and tested on Neovim `0.9.1`. 100% Vimscript and no fancy stuff, so it
should work on Vim8+, too.

# Related Plugins
For a non-inverse split action, see e.g. [vim-insert-append-single-character](https://github.com/bagohart/vim-insert-append-single-character) or [vim-split-line](https://github.com/drzel/vim-split-line).
