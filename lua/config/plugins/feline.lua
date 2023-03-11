--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: feline.lua
  Desc: Feline buffer bar config
--]]

-- Colours --
local cols = {
    terminal = '#e5c07b',
    replace = '#fca2a9',
    selection = '#ec5f67',
    block = '#e772b7',
    insert = '#c678dd',
    none = '#7589ee',
    visual = '#a2b8ee',
    normal = '#51afef',
    command = '#98be65',
    enter = '#3d9583',
    err = '#ec5f67',
    warn = '#e5c07b',
    info = '#98be65',
    hint = '#c678dd',
    bg = '#22262e',
    bg2 = '#2b3139',
    NULL = '#ff5533' -- TODO: Repl with own colours
}

local vim_col = function ()
    return require("feline.providers.vi_mode").get_mode_color()
end

-- Replace Vim Colours --
local vi_mode_colours = {
    NORMAL = cols.normal,
    INSERT = cols.insert,
    VISUAL = cols.visual,
    LINES = cols.visual,
    OP = cols.normal,
    BLOCK = cols.block,
    REPLACE = cols.replace,
    ['V-REPLACE'] = cols.replace,
    ENTER = cols.enter,
    MORE = cols.enter,
    SELECT = cols.selection,
    COMMAND = cols.command,
    TERM = cols.terminal,
    SHELL = cols.terminal,
    NONE = cols.none
}
-- Icons --
local icons = {
    errs = '',
    warns = '',
    infos = '',
    hints = '',

    words = ' ',
    left = '', --  
    right = '' --  
}
-- Word counter --
local function word_counter()
    local words = tostring(vim.fn.wordcount().words)
    local icon = icons.words
    return icon .. words
end
-- Modules --
local mod = {
    mode = {
        provider = {
            name = "vi_mode",
            opts = { show_mode_name = true }
        },
        hl = function()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = cols.bg,
                style = "bold",
                name = "NeovimModeHLColor"
            }
        end,
        left_sep = "block"
    },
    spacing = {
        left = {
            provider = icons.left,
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = cols.bg2
                }
            end
        },
        left2 = {
            provider = icons.left,
            hl = function ()
                return {
                    fg = cols.bg2,
                    bg = cols.bg
                }
            end
        },
        left_none = {
            provider = icons.left,
            hl = {
                fg = cols.bg,
                bg = cols.NULL
            }
        },
        right = {
            provider = icons.right,
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = cols.bg2
                }
            end
        },
        right2 = {
            provider = icons.right,
            hl = {
                fg = cols.bg2,
                bg = cols.bg
            }
        },
        right_none = {
            provider = icons.right,
            hl = {
                fg = cols.bg,
                bg = cols.NULL
            }
        }
    },
    file = {
        provider = 'file_info',
        left_sep = "block",
        hl = function ()
            return {
                bg = cols.bg,
                fg = vim_col(),
                style = 'bold'
            }
        end
    },
    percentage = {
        provider = "line_percentage",
        hl = function ()
            return {
                bg = vim_col(),
                fg = cols.bg,
                style = 'bold'
            }
        end,
        right_sep = 'block'
    },
    words = {
        provider = word_counter,
        hl = {
            fg = cols.normal,
            bg = cols.NULL,
            style = 'bold'
        }
    },
    spacing_icon = {
        provider = icons.prog,
        hl = function ()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = cols.bg2
            }
        end
    },
    lsp = {
        provider = "lsp_client_names",
		right_sep = "block",
        hl = function ()
            return {
                fg = vim_col(),
                bg = cols.bg2,
                style = 'bold'
            }
        end
    },
    diagnostic_errors = {
		provider = "diagnostic_errors",
		hl = {
		    fg = cols.err,
            bg = cols.NULL,
            style = 'bold'
		},
        left_sep = 'block'
	},
	diagnostic_warnings = {
		provider = "diagnostic_warnings",
		hl = {
			fg = cols.warn,
            bg = cols.NULL,
            style = 'bold'
		},
        left_sep = 'block'
	},
	diagnostic_hints = {
		provider = "diagnostic_hints",
		hl = {
			fg = cols.hint,
            bg = cols.NULL,
            style = 'bold'
		},
        left_sep = 'block'
	},
    diagnostic_info = {
		provider = "diagnostic_info",
        hl = {
            fg = cols.info,
            bg = cols.NULL,
            style = 'bold'
        },
        left_sep = 'block'
	},
    git_branch = {
        provider = "git_branch",
        left_sep = 'block',
        hl = function ()
            return {
                style = 'bold',
                bg = cols.bg2,
                fg = vim_col()
            }
        end
    },
    git_diff_added = {
        provider = "git_diff_added",
        hl = {
            style = 'bold',
            bg = cols.bg,
            fg = cols.info
        },
        right_sep = 'block'
    },
    git_diff_removed = {
        provider = "git_diff_removed",
        hl = {
            style = 'bold',
            bg = cols.bg,
            fg = cols.err
        },
        right_sep = 'block'
    },
    git_diff_changed = {
        provider = "git_diff_changed",
        hl = {
            style = 'bold',
            bg = cols.bg,
            fg = cols.warn
        },
        right_sep = 'block'
    }
}
-- Distribiution --
local left = {
    mod.mode,
    mod.spacing.left,
    mod.git_branch,
    mod.spacing.left2,
    mod.file,
    mod.spacing.left_none
}
local middle = {
    mod.words,
    mod.diagnostic_errors,
    mod.diagnostic_warnings,
    mod.diagnostic_info,
    mod.diagnostic_hints
}
local right = {
    mod.spacing.right_none,
    mod.git_diff_added,
    mod.git_diff_changed,
    mod.spacing.right2,
    mod.lsp,
    mod.spacing.right,
    mod.percentage
}
-- Preparation --
local components = {
	active = {
		left,
		middle,
		right
	}
}
-- Load Config --
require('feline').setup {
    default_bg = cols.bg,
    components = components,
    vi_mode_colors = vi_mode_colours
}
