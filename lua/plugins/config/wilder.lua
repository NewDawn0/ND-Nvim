local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    highlights = {border = 'Normal'},
    left = {' ', wilder.popupmenu_devicons()},
    border = 'rounded',
  })
))
