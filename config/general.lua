--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:17:06
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:22:23
FilePath: /wezterm-config/config/general.lua
Description: general settings for wezterm
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
return {
   -- behaviours
   automatically_reload_config = true,
   check_for_updates = false,
   exit_behavior = 'Close', -- if the shell program exited with a successful status
   status_update_interval = 1000,

   -- scrollbar
   scrollback_lines = 5000,

   -- paste behaviours
   canonicalize_pasted_newlines = 'CarriageReturn',

   hyperlink_rules = {
      -- Matches: a URL in parens: (URL)
      {
         regex = '\\((\\w+://\\S+)\\)',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in brackets: [URL]
      {
         regex = '\\[(\\w+://\\S+)\\]',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in curly braces: {URL}
      {
         regex = '\\{(\\w+://\\S+)\\}',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in angle brackets: <URL>
      {
         regex = '<(\\w+://\\S+)>',
         format = '$1',
         highlight = 1,
      },
      -- Then handle URLs not wrapped in brackets
      {
         regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
         format = '$0',
      },
      -- implicit mailto link
      {
         regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
         format = 'mailto:$0',
      },
   },
}
