--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:17:06
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:18:28
FilePath: /wezterm-config/config/appearance.lua
Description: appearance settings for wezterm
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
local wezterm = require('wezterm')
local colors = require('colors.custom')
-- local fonts = require('config.fonts')

return {
   term = "xterm-256color",
   animation_fps = 60,
   max_fps = 60,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',

   -- color scheme
   -- colors = colors,
   color_scheme = "Sakura",

   -- background
   window_background_opacity = 0.95,
   win32_system_backdrop = 'Acrylic',
   window_background_gradient = {
      colors = { '#881798', '#881798' },
      -- Specifices a Linear gradient starting in the top left corner.
      orientation = { Linear = { angle = -45.0 } },
   },
   background = {
      {
         source = { File = wezterm.config_dir .. '/backdrops/space.jpg' },
      },
      {
         source = { Color = '#1A1B26' },
         height = '100%',
         width = '100%',
         opacity = 0.85,
      },
   },

   -- scrollbar
   enable_scroll_bar = true,
   min_scroll_bar_height = "3cell",
   colors = {
      scrollbar_thumb = '#2A2B3D',
   },

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = true,
   tab_max_width = 100,
   show_tab_index_in_tab_bar = true,
   switch_to_last_active_tab_when_closing_tab = true,

   -- cursor
   default_cursor_style = "BlinkingBlock",
   cursor_blink_ease_in = "Constant",
   cursor_blink_ease_out = "Constant",
   cursor_blink_rate = 800,

   -- window
   adjust_window_size_when_changing_font_size = true,
   window_decorations = "INTEGRATED_BUTTONS|RESIZE",
   integrated_title_button_style = "MacOsNative",
   integrated_title_button_color = "auto",
   integrated_title_button_alignment = "Right",
   initial_cols = 100,
   initial_rows = 35,
   window_padding = {
      left = 5,
      right = 10,
      top = 12,
      bottom = 7,
   },
   window_close_confirmation = 'AlwaysPrompt',
   window_frame = {
      active_titlebar_bg = '#0F2536',
      inactive_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   inactive_pane_hsb = { saturation = 1.0, brightness = 5.0 },
}
