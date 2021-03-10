-- require'nvim-web-devicons'.setup()

local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#282828',
  yellow = '#d79921',
  cyan = '#83a598',
  darkblue = '#458588',
  green = '#b8bb26',
  orange = '#d65d0e',
  purple = '#b16286',
  magenta = '#d3869b',
  grey = '#a89984',
  blue = '#076678',
  red = '#cc241d'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.yellow,
                          i = colors.green,
                          v = colors.blue,
                          [''] = colors.blue,
                          V = colors.blue,
                          c = colors.purple,
                          no = colors.magenta,
                          s = colors.orange,
                          S = colors.orange,
                          [''] = colors.orange,
                          ic = colors.yellow,
                          R = colors.red,
                          Rv = colors.red,
                          cv = colors.red,
                          ce=colors.red,
                          r = colors.cyan,
                          rm = colors.cyan,
                          ['r?'] = colors.cyan,
                          ['!']  = colors.red,
                          t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
      return '  NV-IDE '
    end,
    separator = ' ',
    separator_highlight = {colors.yellow,function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg
    end},
    highlight = {colors.bg,colors.bg,'bold'},
  },
}

gls.left[2] = {
  FileName = {
    provider = 'FileName',
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.gray,colors.bg},
    highlight = {colors.gray,colors.bg, 'bold'}
  }
}
gls.left[3] = {
  GitIcon = {
    provider = function() return ' ' end,
    condition = buffer_not_empty,
    highlight = {colors.orange,colors.bg},
  }
}
gls.left[4] = {
  GitBranch = {
    provider = 'GitBranch',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    condition = buffer_not_empty,
    highlight = {colors.yellow,colors.bg, 'bold'},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.green,colors.bg, 'bold'},
  }
}
gls.left[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.blue,colors.bg, 'bold'},
  }
}
gls.left[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.bg, 'bold'},
  }
}
gls.left[8] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg, 'bold'}
  }
}
gls.left[9] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg, 'bold'}
  }
}
gls.left[10] = {
  Space = {
    provider = function () return '' end
  }
}
gls.left[11] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg, 'bold'},
  }
}
gls.left[12] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '   ',
    highlight = {colors.blue,colors.bg, 'bold'},
  }
}
gls.left[13] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '   ',
    highlight = {colors.orange,colors.bg, 'bold'},
  }
}

-- RIGHT

gls.right[1] ={
  FileIcon = {
    separator = ' ',
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
    separator_highlight = {colors.darkblue,colors.bg},
  },
}
gls.right[2] = {
  FileSize = {
    provider = 'FileSize',
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.magenta,colors.bg, 'bold'}
  }
}
gls.right[3] ={
  Ruby = {
    separator = '  %{rvm#statusline()}',
    provider = function() return '' end,
    highlight = {colors.magenta,colors.bg},
    separator_highlight = {colors.red,colors.bg, 'bold'}
  },
}
gls.right[4]= {
  FileEncode = {
    provider = 'FileEncode',
    separator = '  ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg, 'bold'},
  }
}
gls.right[5]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = '  ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg, 'bold'},
  }
}
gls.right[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '  ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg, 'bold'},
  },
}
gls.right[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg, 'bold'},
  }
}
gls.right[8] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.bg, 'bold'},
  }
}
 gls.short_line_left[1] = {
   BufferType = {
     provider = 'FileTypeName',
     separator = ' ',
     separator_highlight = {colors.purple,colors.bg},
     highlight = {colors.grey,colors.purple}
   }
 }
 gls.short_line_right[1] = {
   BufferIcon = {
     provider= 'BufferIcon',
     separator = ' ',
     separator_highlight = {colors.purple,colors.bg},
     highlight = {colors.grey,colors.purple}
   }
 }