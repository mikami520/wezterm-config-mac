--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:25:35
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 11:21:32
FilePath: /wezterm/colors/custom.lua
Description: custom color scheme for wezterm
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
-- A slightly altered version of catppucchin mocha
local mocha = {
   rosewater = "#f5e0dc",
   flamingo = "#f2cdcd",
   pink = "#f5c2e7",
   mauve = "#cba6f7",
   red = "#f38ba8",
   maroon = "#eba0ac",
   peach = "#fab387",
   yellow = "#f9e2af",
   green = "#a6e3a1",
   teal = "#94e2d5",
   sky = "#89dceb",
   sapphire = "#74c7ec",
   blue = "#89b4fa",
   lavender = "#b4befe",
   text = "#881798",
   subtext1 = "#bac2de",
   subtext0 = "#a6adc8",
   overlay2 = "#9399b2",
   overlay1 = "#7f849c",
   overlay0 = "#6c7086",
   surface2 = "#585b70",
   surface1 = "#45475a",
   surface0 = "#313244",
   base = "#1f1f28",
   mantle = "#181825",
   crust = "#11111b",
}

local colorscheme = {
   foreground = mocha.pink,
   background = mocha.pink,
   cursor_bg = mocha.pink,
   cursor_border = mocha.pink,
   cursor_fg = mocha.pink,
   selection_bg = mocha.pink,
   selection_fg = mocha.text,
   ansi = {
      "#0C0C0C", -- black
      "#C50F1F", -- red
      "#13A10E", -- green
      "#C19C00", -- yellow
      "#0037DA", -- blue
      "#881798", -- magenta/purple
      "#3A96DD", -- cyan
      "#CCCCCC", -- white
   },
   brights = {
      "#767676", -- black
      "#E74856", -- red
      "#16C60C", -- green
      "#F9F1A5", -- yellow
      "#3B78FF", -- blue
      "#B4009E", -- magenta/purple
      "#61D6D6", -- cyan
      "#F2F2F2", -- white
   },
   tab_bar = {
      background = "#B4009E",
      active_tab = {
         bg_color = mocha.pink,
         fg_color = mocha.text,
      },
      inactive_tab = {
         bg_color = mocha.surface0,
         fg_color = mocha.subtext1,
      },
      inactive_tab_hover = {
         bg_color = mocha.surface0,
         fg_color = mocha.text,
      },
      new_tab = {
         bg_color = mocha.base,
         fg_color = mocha.text,
      },
      new_tab_hover = {
         bg_color = mocha.mantle,
         fg_color = mocha.text,
         italic = true,
      },
   },
   visual_bell = mocha.surface0,
   indexed = {
      [16] = mocha.peach,
      [17] = mocha.rosewater,
   },
   scrollbar_thumb = mocha.surface2,
   split = mocha.overlay0,
   compose_cursor = mocha.flamingo, -- nightbuild only
}

return colorscheme
