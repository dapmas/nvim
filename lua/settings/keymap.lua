vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<F3>', ':set number! relativenumber!<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F4>', ':set list! list?<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'nt', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nm', ':Dispatch npm start<CR>', {noremap = false, silent = false})

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferNext<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPrevious<CR>', {noremap = false, silent = false})

-- Git
vim.api.nvim_set_keymap('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', {noremap = false, silent = false})
-- vim.api.nvim_set_keymap('n', '<leader>gd', ':DiffviewOpen<CR>', {noremap = false, silent = false})

-- Ctrlsf
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt', {noremap = false, silent = false})
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>', {noremap = true, silent = false})

-- Easy-align
vim.api.nvim_set_keymap('x', 'ea', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ea', '<Plug>(EasyAlign)', {noremap = false, silent = false})

-- Lightspeed
-- vim.api.nvim_set_keymap('n', 'f', '<Plug>Lightspeed_f', {noremap = false, silent = false})
-- vim.api.nvim_set_keymap('n', 'F', '<Plug>Lightspeed_F', {noremap = false, silent = false})
-- vim.api.nvim_set_keymap('n', 't', '<Plug>Lightspeed_t', {noremap = false, silent = false})
-- vim.api.nvim_set_keymap('n', 'T', '<Plug>Lightspeed_T', {noremap = false, silent = false})

-- LSP
vim.api.nvim_set_keymap('n', '<space>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>a', ':lua vim.lsp.diagnostic.code_action()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>s', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true})

-- Spectre
-- vim.api.nvim_set_keymap('n', '<leader>S', ":lua require('spectre').open()<CR>", {noremap = true, silent = false})
-- vim.api.nvim_set_keymap('v', '<leader>S', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
-- vim.api.nvim_set_keymap('n', '<leader>Sw', "viw:lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
-- vim.api.nvim_set_keymap('n', '<leader>sp', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = false})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>fw', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fm', ":lua require('telescope.builtin').marks()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ts', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>sw', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ff', ":lua require('plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fp', ":lua require('telescope').extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fc', ":lua require('plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', ":lua require('plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fe', ":lua require('plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<leader>fn', ":lua require('plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<leader>nn', ":e ~/Note/", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gic', ':Octo issue create<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gil', ':Octo issue list<CR>', {noremap = true, silent = false})

-- HlsLens
vim.api.nvim_set_keymap('n', '<leader>n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })

-- Todo-comments
vim.api.nvim_set_keymap('n', '<leader>to', ':TodoTelescope<CR>', {noremap = true, silent = false})

-- Fterm
vim.api.nvim_set_keymap('n', 'tt', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
