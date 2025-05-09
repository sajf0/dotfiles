vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set('n', 'q', ':q!<CR>', { noremap = true, silent = true })

vim.o.splitright = true

vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

--vim.api.nvim_create_autocmd("BufWritePost", {
--  pattern = "*.m",
--  callback = function()
--    local filename = vim.fn.expand("%:p")  -- Full path of current file
--    vim.cmd("vsplit")                      -- Open vertical split
--    vim.cmd("terminal octave " .. filename)  -- Run Octave in terminal
--  end,
--})


vim.keymap.set('n', '<C-a>', function()
  local filename = vim.fn.expand("%:p") -- Full path to current file
  vim.cmd("vsplit")                     -- Open a vertical split
  vim.cmd("terminal octave " .. filename) -- Run Octave in the terminal
end, { noremap = true, silent = true })
