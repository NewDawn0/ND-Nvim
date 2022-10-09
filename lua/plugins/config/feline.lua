local fn = vim.fn
-- Colours --
local colours = {
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
    txt = '#dfdfdf',
    bg = '#22262e',
    bg2 = '#2b3139',
    bg3 = '#42464e',
    err = '#ec5f67',
    warn = '#e5c07b',
    info = '#98be65',
    hint = '#c678dd'
}
-- Replace Vim Colours --
local vi_mode_colours = {
    NORMAL = colours.normal,
    INSERT = colours.insert,
    VISUAL = colours.visual,
    OP = colours.normal,
    BLOCK = colours.block,
    REPLACE = colours.replace,
    ['V-REPLACE'] = colours.replace,
    ENTER = colours.enter,
    MORE = colours.enter,
    SELECT = colours.selection,
    COMMAND = colours.command,
    TERM = colours.terminal,
    SHELL = colours.terminal,
    NONE = colours.none
}
-- Icons --
local icons = {
    linux = ' ',
    macos = ' ',
    windows = ' ',

    errs = '',
    warns = '',
    infos = '',
    hints = '',

    words = ' ',
    prog = ' '
}
-- OS INFO --
local function file_osinfo()
    local os = vim.bo.fileformat:upper()
    local icon
    if os == 'UNIX' then
        icon = icons.linux
    elseif os == 'MAC' then
        icon = icons.macos
    else
        icon = icons.windows
    end
    return icon .. os
end
-- Word counter --
local function word_counter()
    local words = tostring(fn.wordcount().words)
    local icon = icons.words
    return icon .. words
end
-- Components --
local c = {
    vim_mode = {
        provider = {
            name = "vi_mode",
            opts = { show_mode_name = true }
        },
        hl = function()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = colours.bg,
                style = "bold",
                name = "NeovimModeHLColor"
            }
        end,
        left_sep = "block"
    },
    spacing = {
        one = {
            provider = '',
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = colours.bg3
                }
            end,
            right_sep = 'block'
        },
        two = {
            provider = '',
            hl = {
                bg = colours.bg2,
                fg = colours.bg3
            }
        },
        three = {
            provider = '',
            hl = {
                bg = colours.bg,
                fg = colours.bg2
            }
        },
        four = {
            provider = '▊',
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = colours.bg
                }
            end
        },
        five = {
            provider = "",
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = colours.bg2
                }
            end
        },
        six = {
            provider = "",
            hl = function ()
                return {
                    fg = require("feline.providers.vi_mode").get_mode_color(),
                    bg = colours.bg3
                }
            end
        },
        seven = {
            provider = "",
            hl = function ()
                return {
                    bg = require("feline.providers.vi_mode").get_mode_color(),
                    fg = colours.bg3
                }
            end
        },
        eight = {
            provider = "",
            hl = {
                bg = colours.bg,
                fg = colours.bg2
            }
        },
        nine = {
            provider = '  ',
            hl = {
                bg = colours.bg,
                fg = colours.bg
            }
        }
    },
    file = {
        info = {
            provider = 'file_info',
            hl = {
                fg = colours.normal,
                bg = colours.bg2,
                style = 'bold'
            },
            left_sep = "block"
        },
        encoding = {
            provider = 'file_encoding',
            left_sep = ' ',
            hl = {
                fg = colours.bg,
                bg = colours.bg,
                style = 'bold'
            }
        },
        type = { provider = 'file_type' },
        os = {
            provider = file_osinfo,
            left_sep = ' ',
            hl = {
                fg = colours.hint,
                style = 'bold'
            }
        }
    },
    scroll_bar = {
        provider = 'scroll_bar',
        hl = {
            fg = colours.terminal,
            bg = colours.bg3,
            style = 'bold'
        },
        right_sep = 'block',
        left_sep = 'block'
    },
    line_percentage = {
        provider = "line_percentage",
        hl = function ()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = colours.bg
            }
        end,
        right_sep = 'block'
    },
    words = {
        provider = word_counter,
        hl = {
            fg = colours.normal,
            bg = colours.bg
        }
    },
    spacing_icon = {
        provider = icons.prog,
        hl = function ()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = colours.bg2
            }
        end
    },
    lsp = {
        provider = "lsp_client_names",
        hl = {
            fg = colours.normal,
            bg = colours.bg2
        },
		right_sep = "block"
    },
    diagnostic_errors = {
		provider = "diagnostic_errors",
		hl = {
		    fg = colours.err,
            bg = colours.bg
		},
        left_sep = 'block'
	},
	diagnostic_warnings = {
		provider = "diagnostic_warnings",
		hl = {
			fg = colours.warn,
            bg = colours.bg
		},
        left_sep = 'block'
	},
	diagnostic_hints = {
		provider = "diagnostic_hints",
		hl = {
			fg = colours.hint,
            bg = colours.bg
		},
        left_sep = 'block'
	},
    diagnostic_info = {
		provider = "diagnostic_info",
        hl = {
            fg = colours.info,
            bg = colours.bg
        },
        left_sep = 'block'
	},
    git_branch = {
        provider = "git_branch",
        hl = {
            style = 'bold',
            bg = colours.bg,
            fg = colours.normal
        },
        right_sep = 'block'
    },
    git_diff_added = {
        provider = "git_diff_added",
        hl = {
            style = 'bold',
            bg = colours.bg,
            fg = colours.info
        },
        right_sep = 'block'
    },
    git_diff_removed = {
        provider = "git_diff_removed",
        hl = {
            style = 'bold',
            bg = colours.bg,
            fg = colours.err
        },
        right_sep = 'block'
    },
    git_diff_changed = {
        provider = "git_diff_changed",
        hl = {
            style = 'bold',
            bg = colours.bg,
            fg = colours.warn
        },
        right_sep = 'block'
    }
}
-- Distribiution --
local left = {
    c.vim_mode,
    c.spacing.one,
    c.spacing.two,
    c.file.info,
    c.spacing.three
}
local middle = {
    c.words,
    c.spacing.nine,
    c.diagnostic_errors,
    c.diagnostic_warnings,
    c.diagnostic_info,
    c.diagnostic_hints
}
local right = {
    c.spacing.eight,
    c.lsp,
    c.spacing.five,
    c.line_percentage,
    c.spacing_icon,
    c.spacing.seven,
    c.scroll_bar,
    c.spacing.six,
    c.spacing.four
}
-- Preparation --
local components = {
	active = {
		left,
		middle,
		right
	},
	inactive = {
		left,
		middle,
		right
	}
}
-- Load Config --
require('feline').setup {
    default_bg = colours.bg,
    components = components,
    vi_mode_colors = vi_mode_colours
}
