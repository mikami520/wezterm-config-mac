--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:25:35
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:34:37
FilePath: /wezterm/config/fonts.lua
Description: 
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:25:35
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:29:40
FilePath: /wezterm/config/fonts.lua
Description: 
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:17:06
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:22:12
FilePath: /wezterm-config/config/fonts.lua
Description: 
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
local wezterm = require('wezterm')
local platform = require('utils.platform')

local font_size = platform().is_mac and 20 or 9

return {
   font = wezterm.font("MesloLGS NF", {italic=false}),
   font_size = font_size,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
