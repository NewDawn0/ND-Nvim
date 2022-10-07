local colours = {
    ins = '#c782e7',-- insert
    rep = '#fca2a9',-- replace
    vis = '#a2b8ee',-- visual
    cmd = '#98c279',-- command
    term = '#e7c787',-- terminal
    sel = '#e772b7',-- select
    norm = '#51afef',-- normal
    txt = '#dfdfdf',
    txt_dark = '#282c34',
    bg_1 = '#2d3139',
    bg_2 = '#22262e'
}
return {
  normal = {
    a = { fg = colours.txt_dark, bg = colours.norm, gui = 'bold' },
    b = { fg = colours.txt, bg = colours.bg_1},
    c = { fg = colours.txt, bg = colours.bg_2},
  },
  command = { a = { fg = colours.txt_dark, bg = colours.cmd, gui = 'bold' } },
  insert = { a = { fg = colours.txt_dark, bg = colours.ins, gui = 'bold' } },
  visual = { a = { fg = colours.txt_dark, bg = colours.vis, gui = 'bold' } },
  terminal = { a = { fg = colours.txt_dark, bg = colours.term, gui = 'bold' } },
  replace = { a = { fg = colours.txt_dark, bg = colours.rep, gui = 'bold' } },
  inactive = {
    a = { fg = colours.txt_dark, bg = colours.sel, gui = 'bold' },
    b = { fg = colours.txt, bg = colours.bg_1},
    c = { fg = colours.txt, bg = colours.bg_2},
  },
}
