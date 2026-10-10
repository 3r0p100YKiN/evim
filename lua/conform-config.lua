require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        -- rust не указываем — там rust_analyzer сам форматирует
    },
    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback", -- если внешнего форматтера нет, использовать LSP
    },
})
