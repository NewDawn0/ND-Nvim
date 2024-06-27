local gen = require("gen")
gen.setup({
	model = "mistral",
	host = "localhost",
	quit_map = "q",
	retry_map = "<leader>r",
	display_mode = "split",
	show_prompt = false,
	show_model = false,
})
gen.prompts["Elaborate_Text"] = {
	prompt = "Elaborate the following text:\n$text",
	replace = true,
}
gen.prompts["Fix_Code"] = {
	prompt = "Fix the following code:\n$text",
	replace = true,
	extract = "```$filetype\n(.-)```",
}
