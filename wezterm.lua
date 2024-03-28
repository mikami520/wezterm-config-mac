--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:17:06
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:17:37
FilePath: /wezterm-config/wezterm.lua
Description: 
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
local Config = require('config')

require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options
