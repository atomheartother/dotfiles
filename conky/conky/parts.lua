parts = {}

local color_indicator_dark = {
  good      = '#A1ECF7',
  degraded  = '#D69045',
  bad       = '#D64747'
}

local ci = color_indicator_dark

-- Time
parts.time = helper.value('${time %H:%M }', nil)

-- Date
parts.date = helper.value('${time %D}', nil)

local volume_command = [[amixer sget Master,0 | egrep -o '([0-9]+%)' | head -n 1 | sed ':a;N;$!ba;s/\n/ /g']]
parts.volume = helper.common('', nil, "${execi 1 " .. volume_command .. "}")


-- CPU 0
parts.cpu0 = helper.common('', nil) .. [[,
  ${if_match ${cpu cpu0}<50}
  ]] .. helper.value('${cpu cpu0}%', ci.good) .. [[
    ${else}${if_match ${cpu cpu0}<60E}
    ]] .. helper.value('${cpu cpu0}%',ci.degraded) .. [[
      ${else}${if_match ${cpu cpu0}<=100}
      ]] .. helper.value('${cpu cpu0}%', ci.bad) .. [[
        ${endif}${endif}${endif}
        ]]


-- Battery
parts.battery = helper.separator() .. [[,
  ${if_match ${battery_percent}>=98}
  ]] .. helper.icon('', nil) .. [[
  ${else}
    ${if_match "${acpiacadapter}" == "off-line"}
    ${if_match ${battery_percent}<20}
  ]] .. helper.icon('', nil) .. [[,
      ${else}${if_match ${battery_percent}<50}
      ]] .. helper.icon('', nil) .. [[,
        ${else}${if_match ${battery_percent}<75}
        ]] .. helper.icon('', nil) .. [[,
          ${else}
          ]] .. helper.icon('', nil) .. [[,
            ${endif}${endif}${endif}
    ${else}
            ]] .. helper.icon('⚡', nil) .. [[,
    ${endif}

  ${if_match ${battery_percent}<15}
  ]] .. helper.value('${battery_percent}%', ci.bad) .. [[
    ${else}${if_match ${battery_percent}<50}
    ]] .. helper.value('${battery_percent}%', ci.degraded) .. [[
      ${else}${if_match ${battery_percent}>=50}
      ]] .. helper.value('${battery_percent}%', ci.good) .. [[
        ${endif}${endif}${endif}
 ${endif}
        ]]
