--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local cmd = vim.api.nvim_create_user_command
local langs = vim.g.ndnvim.langs

-- Emacs' scratch buffer
cmd("Scratch", function()
	vim.cmd([[ vsplit | ene | startinsert ]])
	vim.api.nvim_buf_set_option(0, "buftype", "nofile")
	vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")
	vim.api.nvim_buf_set_name(0, "Scratch")
end, {})

-- Set install info command
cmd("NDNvimInstallInfo", function()
	print("List of enabled languages")
	print("[INFO] Enable languages using pkgs.ndnvim.override { langs.<language>.enabled = true; };")
	print("")
	if vim.g.ndnvim.langs.all.enabled then
		print("[✓]  all")
	else
		print("[x]  all")
	end
	for lang, settings in pairs(vim.g.ndnvim.langs) do
		if lang ~= "all" then
			if settings.enabled then
				print("[✓]  " .. lang)
			else
				print("[x]  " .. lang)
			end
		end
	end
end, {})

-- Live server for hosting web files
if langs.html.enabled or langs.css.enabled or langs.javascript.enabled or langs.typescript.enabled then
	cmd("LiveServer", function()
		vim.notify("Live-Server started")
		vim.fn.jobstart("live-server", {
			on_exit = function()
				vim.notify("Live-Server exited")
			end,
		})
	end, {})
end
