require("mason-tool-installer").setup({
    ensure_installed = {
        "stylua",
        "black",
        "shfmt",       -- добавили
        "clang-format",
        "prettier",    -- добавили
        "shellcheck",  -- оставляем как линтер
    },
    auto_install = true,
})
