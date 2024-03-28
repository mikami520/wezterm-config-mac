--[[
Author: mikami520 yl.xiao@mail.utoronto.ca
Date: 2024-03-28 09:17:06
LastEditors: mikami520 yl.xiao@mail.utoronto.ca
LastEditTime: 2024-03-28 09:23:06
FilePath: /wezterm-config/config/launch.lua
Description: launch settings for wezterm
I Love IU
Copyright (c) 2024 by mikami520 yl.xiao@mail.utoronto.ca, All Rights Reserved. 
--]]
local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'powershell' }
   options.launch_menu = {
      { label = 'PowerShell Core', args = { 'pwsh' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
      {
         label = 'Git Bash',
         args = { 'C:\\Users\\kevin\\scoop\\apps\\git\\current\\bin\\bash.exe' },
      },
      {
         label = 'Alma Linux',
         args = { 'ssh', 'kali@192.168.44.147', '-p', '22' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { '/bin/zsh', '-l' }
   options.launch_menu = {
      { label = 'zsh', args = { '/bin/zsh', '-l' } },
   }
end

return options
