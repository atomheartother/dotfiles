-- vim: ts=4 sw=4 noet ai cindent syntax=lua

-- global
helper = {}

-- template variables
local color_preset_dark = {
  icon      = '#D95763',
  text      = '#5c5dad',
  separator = '#5c5dad',
  value     = '#aaaaaa'
}

local color_preset = color_preset_dark


function helper.icon(text, color)
  color = color or color_preset.icon

  return [[  {
    "full_text":"]] .. text .. [[",
    "color":"\]] .. color .. [[",
    "separator":false,
    "separator_block_width":6}
  ]]
end

function helper.text(text, color)
  color = color or color_preset.text

  return [[  {
    "full_text":"]] .. text .. [[",
    "color":"\]] .. color .. [[",
    "separator":false,
    "separator_block_width":6}
  ]]
end

function helper.separator(color)
  color = color or color_preset.separator

  return [[  {
    "full_text":"/",
    "color":"\]] .. color .. [[",
    "separator":false,
    "separator_block_width":6}
  ]]
end

function helper.value(text, color)
  color = color or color_preset.value

  return [[  {
    "full_text":"]] .. text .. [[",
    "color":"\]] .. color .. [[",
    "separator":false,
    "separator_block_width":6}
  ]]
end


function helper.common(awesome_icon, text, value)
  json = helper.separator()
  
  if awesome_icon then json = json .. [[,
  ]] ..  helper.icon(awesome_icon) end
  if text then json = json .. [[,
  ]] .. helper.text(text) end
  if value then json = json .. [[,
  ]] .. helper.value(value) end
  
  return json
end
