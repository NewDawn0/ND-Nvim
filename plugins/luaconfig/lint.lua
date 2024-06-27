local lint = require("lint")
lint.linters_by_ft = {
	["*"] = { "codespell", "typos", "gitleaks" },
	c = { "cpplint", "trivy" },
	cpp = { "cpplint", "trivy" },
	cs = { "trivy" },
	css = { "stylelint" },
	dart = { "trivy" },
	dockerfile = { "hadolint", "trivy" },
	elixir = { "trivy" },
	gitcommit = { "commitlint", "gitlint" },
	go = { "golangcilint", "trivy" },
	haskell = { "hlint" },
	java = { "checkstyle", "trivy" },
	javascript = { "eslint_d", "oxlint" },
	json = { "jsonlint" },
	kotlin = { "ktlint" },
	lua = { "luacheck" },
	make = { "checkmake" },
	markdown = { "write_good", "markdownlint-cli2" },
	proto = { "protolint" },
	python = { "flake8" },
	sass = { "stylelint" },
	scss = { "stylelint" },
	sh = { "shellcheck", "shellharden" },
	text = { "write_good" },
	typescript = { "eslint_d", "oxlint" },
	yaml = { "actionlint", "yamllint" },
	zsh = { "shellcheck", "shellharden" },
}
vim.api.nvim_create_autocmd({ "BufWritePost", "TextChanged" }, {
	callback = function()
		lint.try_lint()
	end,
})
