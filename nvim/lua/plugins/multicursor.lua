--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility
local util = require "util.util"
local mc = require "multicursor-nvim"

-- Setup multicursor
mc.setup {
  shallowUndo = false,
  signs = { " ┆", " │", " ┃" },
}

-- Set keybinds
util.setkb { "<leader>ck", function() mc.lineAddCursor(-1) end, "Add cursor above", { "n", "v" } }
util.setkb { "<leader>cj", function() mc.lineAddCursor(1) end, "Add cursor below", { "n", "v" } }
util.setkb { "<leader>cK", function() mc.lineSkipCursor(-1) end, "Skip cursor above", { "n", "v" } }
util.setkb { "<leader>cJ", function() mc.lineSkipCursor(1) end, "Skip cursor below", { "n", "v" } }

-- Add or skip adding a new cursor by matching the current word/selection
util.setkb { "<leader>cn", function() mc.matchAddCursor(1) end, "Add matching cursor", { "n", "v" } }
util.setkb { "<leader>cs", function() mc.matchSkipCursor(1) end, "Skip matching cursor", { "n", "v" } }
util.setkb { "<leader>cN", function() mc.matchAddCursor(-1) end, "Add matching cursor", { "n", "v" } }
util.setkb { "<leader>cS", function() mc.matchSkipCursor(-1) end, "Skip matching cursor", { "n", "v" } }

-- You can also add cursors with any motion you prefer:
-- util.setkb("n", "<right>", function() mc.addCursor("w") end)
-- util.setkb("n", "<leader><right>", function() mc.skipCursor("w") end)

-- Add a cursor and jump to the next word under cursor.
util.setkb { "<c-n>", function() mc.addCursor "*" end, "Add cursor and jump to next word", { "n", "v" } }

-- Jump to the next word under cursor but do not add a cursor.
util.setkb { "<c-s>", function() mc.skipCursor "*" end, "Jump to next word without adding cursor", { "n", "v" } }

-- Rotate the main cursor.
util.setkb { "<leader>ch", mc.nextCursor, "Rotate main cursor left", { "n", "v" } }
util.setkb { "<leader>cl", mc.prevCursor, "Rotate main cursor right", { "n", "v" } }

-- Delete the main cursor.
util.setkb { "<leader>cd", mc.deleteCursor, "Delete main cursor", { "n", "v" } }

-- Add and remove cursors with control + left click.
util.setkb { "<c-leftmouse>", mc.handleMouse, "Add/remove cursors with ctrl+left click", { "n" } }

util.setkb {
  "<c-q>",
  -- Stop other cursors from moving.
  -- This allows you to reposition the main cursor.
  function()
    if mc.cursorsEnabled() then
      mc.disableCursors()
    else
      mc.addCursor()
    end
  end,
  "Stop other cursors from moving",
  { "n", "v" },
}

util.setkb {
  "<leader>cq",
  function()
    if not mc.cursorsEnabled() then
      mc.enableCursors()
    elseif mc.hasCursors() then
      mc.clearCursors()
    end
  end,
  "Toggle multicursors",
  { "n" },
}

util.setkb { "<leader>ca", mc.alignCursors, "Align cursor columns", { "v" } }
util.setkb { "<leader>cS", mc.splitCursors, "Split visual selections by regex", { "v" } }
util.setkb { "<leader>cI", mc.insertVisual, "Insert for each line of selections", { "v" } }
util.setkb { "<leader>cA", mc.appendVisual, "Append for each line of selections", { "v" } }
util.setkb { "<leader>cR", mc.matchCursors, "Match cursors in selection by regex", { "v" } }

-- Rotate visual selection contents.}
util.setkb { "<leader>t", function() mc.transposeCursors(1) end, "Rotate selected contents left", { "v" } }
util.setkb { "<leader>T", function() mc.transposeCursors(-1) end, "Rotate selected contents right", { "v" } }

-- Customize how cursors look.
util.sethl({ "MultiCursorCursor" }, { link = "Cursor" })
util.sethl({ "MultiCursorVisual" }, { link = "Visual" })
util.sethl({ "MultiCursorSign" }, { link = "SignColumn" })
util.sethl({ "MultiCursorDisabledCursor" }, { link = "Visual" })
util.sethl({ "MultiCursorDisabledVisual" }, { link = "Visual" })
util.sethl({ "MultiCursorDisabledSign" }, { link = "SignColumn" })
