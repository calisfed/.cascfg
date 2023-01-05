vim.keymap.set("n", "`", ":call BufferList()<CR>")
vim.cmd([[
let g:BufferListWidth = 25
let g:BufferListMaxWidth = 25
hi BufferSelected term=reverse ctermfg=white ctermbg=red cterm=bold
hi BufferNormal term=NONE ctermfg=black ctermbg=darkcyan cterm=NONE
augroup end
]])
