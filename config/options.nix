{
  vim = {
    g = {
      mapleader = " ";
      autoformat = true;
    };
    wo = {
      number = true;
      relativenumber = true;
    };
    opt = {
      autowrite = true;
      expandtab = true;
      clipboard = "unnamedplus";
      completeopt = "menu,menuone,noselect";
      conceallevel = 2;
      confirm = false;
      cursorline = true;
      fillchars = {
        diff = "╱";
        eob = " ";
        fold = " ";
        foldclose = "";
        foldopen = "";
        foldsep = " ";
      };
      foldmethod = "expr";
      foldexpr = "nvim_treesitter#foldexpr()";
      foldlevel = 8;
      foldlevelstart = 8;
      ignorecase = true;
      laststatus = 3;
      mouse = "a";
      pumblend = 10;
      pumheight = 10;
      scrolloff = 4;
      shiftround = true;
      shiftwidth = 2;
      showmode = false;
      signcolumn = "yes";
      smartindent = true;
      smoothscroll = true;
      spelllang = [ "en" ];
      tabstop = 2;
      termguicolors = true;
      undofile = true;
      undolevels = 10000;
      updatetime = 200;
      wildmode = "longest:full,full";
      winminwidth = 5;
      wrap = false;
    };
  };
}
