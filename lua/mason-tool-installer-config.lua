require("mason-tool-installer").setup({
    ensure_installed = {
        "stylua",       -- Lua formatter
        "black",        -- Python formatter
        "ruff",         -- Python linter
        "shellcheck",   -- Bash linter
        "clang-format", -- C/C++ formatter
    },
    auto_install = true, -- Устанавливать автоматически при запуске
})
