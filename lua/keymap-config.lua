local wk = require("which-key")

wk.add({
    { "<leader>f", group = "Find" },
    { "<leader>n", group = "NERDTree" },
    { "<leader>t", group = "ToggleTerm" },
})

vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Prev diagnostic" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })

vim.keymap.set("n", "<leader>ff", ":Files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fl", ":BLines<CR>", { desc = "Find lines" })
vim.keymap.set("n", "<leader>fw", ":Windows<CR>", { desc = "Find windows"})

vim.keymap.set("n", "<leader>nt", ":NERDTree<CR>", { desc = "NERDTree" })
vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<CR>", { desc = "NERDTree Find" })
vim.keymap.set("n", "<leader>ne", ":NERDTreeExplore<CR>", { desc = "NERDTree Explore" })

vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
vim.keymap.set("n", "<leader>tb", ":ToggleTerm direction=tab<CR>", { desc = "Terminal in new tab" })
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })

vim.keymap.set("n", "<leader>wk", ":WhichKey <leader><CR>", { desc = "WhichKey" })
