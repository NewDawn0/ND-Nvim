require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'lua', 'go', 'java',
        'python', 'c_sharp',
        'rust', 'javascript',
        'c', 'cpp', 'ruby'
    },
    sync_install = false,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {'lua'},
        additional_vim_regex_highlighting = false
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    },
    rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil
    },
    autopairs = { enable = true },
    autotag = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = false },
    refactor = {
        highlight_definitions = {
            enable = true,
            clear_on_cursor_move = true,
        },
        highlight_current_scope = { enable = false },
        smart_rename = {
            enable = true,
            keymaps = { smart_rename = "grr" }
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>"
            }
        }
    }
}
