{
  keybinds = {
    normal = {
      "<leader>hh" = {
        action = ":nohlsearch<CR>";
        desc = "Disable search highlight";
      };
      "<leader>tt" = {
        action = ":Transparent<CR>";
        desc = "Set transparency";
      };
      "<leader>ss" = {
        action = ":write<CR>";
        desc = "Save";
      };
      "<leader>sq" = {
        action = ":quit<CR>";
        desc = "Quit";
      };
      "<leader>sw" = {
        action = ":wq<CR>";
        desc = "Save and quit";
      };
      "<leader>fo" = {
        action = ":foldopen<CR>";
        desc = "Open fold";
      };
      "<leader>fc" = {
        action = ":foldclose<CR>";
        desc = "Close fold";
      };
      "<leader>sv" = {
        action = ":vsplit<CR>";
        desc = "New vertical split";
      };
      "<leader>sh" = {
        action = ":split<CR>";
        desc = "New horizontal split";
      };
    };
    visual = {
      "<" = {
        action = "<gv";
        desc = "Unindent selection";
      };
      ">" = {
        action = ">gv";
        desc = "Indent selection";
      };
      "<leader>ss" = {
        action = ":sort<CR>";
        desc = "Sort selection";
      };
      "<leader>fo" = {
        action = ":foldopen<CR>";
        desc = "Open fold";
      };
      "<leader>fc" = {
        action = ":foldclose<CR>";
        desc = "Close fold";
      };
    };
  };
}
