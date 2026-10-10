local is_new_nvim = vim.fn.has('nvim-0.12') == 1

if is_new_nvim then
  -- Настройка для Neovim 0.12+ (ветка main)
  -- require('nvim-treesitter').setup { ... } -- опционально
  require('nvim-treesitter').install { 'lua', 'python', 'c', 'cpp', 'bash', 'vim', 'vimdoc' }
  vim.api.nvim_create_autocmd('FileType', {
    callback = function(args) vim.treesitter.start(args.buf) end,
  })
else
  -- Настройка для Neovim 0.11 и ниже (ветка master)
  require('nvim-treesitter.configs').setup({
    ensure_installed = { 'lua', 'python', 'c', 'cpp', 'bash', 'vim', 'vimdoc' },
    auto_install = true,
    highlight = { enable = true },
  })
end
