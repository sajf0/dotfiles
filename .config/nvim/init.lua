vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.opt.cursorline = true

vim.keymap.set('n', '<leader>q', ':q!<CR>', { noremap = true, silent = true })

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


-- vim.keymap.set('n', '<C-a>', function()
--   local filename = vim.fn.expand("%:p") 
--   vim.cmd("vsplit")                     
--   vim.cmd("terminal octave " .. filename)
-- end, { noremap = true, silent = true })


vim.keymap.set("n", "<C-a>", function()
    local ext = vim.fn.expand("%:e")
    local file = vim.fn.expand("%")

    local commands = {
        py = "python " .. file,
        m = "octave " .. file,
	jl = "julia " .. file,
    }

    local cmd = commands[ext]
    if cmd then
        vim.cmd("!" .. cmd)
    else
        print("Unsupported file type: " .. ext)
    end
end, { desc = "Run file in terminal" })
