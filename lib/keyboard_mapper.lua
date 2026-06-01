local keyboard = {}

keyboard.default_keybinds = require('../data/default_keybinds')

keyboard.hotbar_rows = {}

keyboard.parsed_keybinds = {}

--[[
	Parse Keybinds:

	Description:
		Converts the keybinds in data/keybinds.lua into an input which can be used for
		binding keys with Windower.
	Legends:
		1. %: Keybinding is only registered when the chat window is *not* open
		2. ^: CTRL
		3. !: Alt
		4. ~: Shift
		For example: "%~1" means "Shift+1" when chat window is not active.
--]]
--

function keyboard:set_bindings(bindings)
  keyboard.hotbar_rows = {}

  -- transform to format we expect
  local row1 = {}

  table.insert(row1, bindings.R1.C01)
  table.insert(row1, bindings.R1.C02)
  table.insert(row1, bindings.R1.C03)
  table.insert(row1, bindings.R1.C04)
  table.insert(row1, bindings.R1.C05)
  table.insert(row1, bindings.R1.C06)
  table.insert(row1, bindings.R1.C07)
  table.insert(row1, bindings.R1.C08)
  table.insert(row1, bindings.R1.C09)
  table.insert(row1, bindings.R1.C10)
  table.insert(row1, bindings.R1.C11)
  table.insert(row1, bindings.R1.C12)

  local row2 = {}

  table.insert(row2, bindings.R2.C01)
  table.insert(row2, bindings.R2.C02)
  table.insert(row2, bindings.R2.C03)
  table.insert(row2, bindings.R2.C04)
  table.insert(row2, bindings.R2.C05)
  table.insert(row2, bindings.R2.C06)
  table.insert(row2, bindings.R2.C07)
  table.insert(row2, bindings.R2.C08)
  table.insert(row2, bindings.R2.C09)
  table.insert(row2, bindings.R2.C10)
  table.insert(row2, bindings.R2.C11)
  table.insert(row2, bindings.R2.C12)

  local row3 = {}

  table.insert(row3, bindings.R3.C01)
  table.insert(row3, bindings.R3.C02)
  table.insert(row3, bindings.R3.C03)
  table.insert(row3, bindings.R3.C04)
  table.insert(row3, bindings.R3.C05)
  table.insert(row3, bindings.R3.C06)
  table.insert(row3, bindings.R3.C07)
  table.insert(row3, bindings.R3.C08)
  table.insert(row3, bindings.R3.C09)
  table.insert(row3, bindings.R3.C10)
  table.insert(row3, bindings.R3.C11)
  table.insert(row3, bindings.R3.C12)

  local row4 = {}

  table.insert(row4, bindings.R4.C01)
  table.insert(row4, bindings.R4.C02)
  table.insert(row4, bindings.R4.C03)
  table.insert(row4, bindings.R4.C04)
  table.insert(row4, bindings.R4.C05)
  table.insert(row4, bindings.R4.C06)
  table.insert(row4, bindings.R4.C07)
  table.insert(row4, bindings.R4.C08)
  table.insert(row4, bindings.R4.C09)
  table.insert(row4, bindings.R4.C10)
  table.insert(row4, bindings.R4.C11)
  table.insert(row4, bindings.R4.C12)

  local row5 = {}

  table.insert(row5, bindings.R5.C01)
  table.insert(row5, bindings.R5.C02)
  table.insert(row5, bindings.R5.C03)
  table.insert(row5, bindings.R5.C04)
  table.insert(row5, bindings.R5.C05)
  table.insert(row5, bindings.R5.C06)
  table.insert(row5, bindings.R5.C07)
  table.insert(row5, bindings.R5.C08)
  table.insert(row5, bindings.R5.C09)
  table.insert(row5, bindings.R5.C10)
  table.insert(row5, bindings.R5.C11)
  table.insert(row5, bindings.R5.C12)

  local row6 = {}

  table.insert(row6, bindings.R6.C01)
  table.insert(row6, bindings.R6.C02)
  table.insert(row6, bindings.R6.C03)
  table.insert(row6, bindings.R6.C04)
  table.insert(row6, bindings.R6.C05)
  table.insert(row6, bindings.R6.C06)
  table.insert(row6, bindings.R6.C07)
  table.insert(row6, bindings.R6.C08)
  table.insert(row6, bindings.R6.C09)
  table.insert(row6, bindings.R6.C10)
  table.insert(row6, bindings.R6.C11)
  table.insert(row6, bindings.R6.C12)

  local row7 = {}

  table.insert(row7, bindings.R7.C01)
  table.insert(row7, bindings.R7.C02)
  table.insert(row7, bindings.R7.C03)
  table.insert(row7, bindings.R7.C04)
  table.insert(row7, bindings.R7.C05)
  table.insert(row7, bindings.R7.C06)
  table.insert(row7, bindings.R7.C07)
  table.insert(row7, bindings.R7.C08)
  table.insert(row7, bindings.R7.C09)
  table.insert(row7, bindings.R7.C10)
  table.insert(row7, bindings.R7.C11)
  table.insert(row7, bindings.R7.C12)

  local row8 = {}

  table.insert(row8, bindings.R8.C01)
  table.insert(row8, bindings.R8.C02)
  table.insert(row8, bindings.R8.C03)
  table.insert(row8, bindings.R8.C04)
  table.insert(row8, bindings.R8.C05)
  table.insert(row8, bindings.R8.C06)
  table.insert(row8, bindings.R8.C07)
  table.insert(row8, bindings.R8.C08)
  table.insert(row8, bindings.R8.C09)
  table.insert(row8, bindings.R8.C10)
  table.insert(row8, bindings.R8.C11)
  table.insert(row8, bindings.R8.C12)

  local row9 = {}

  table.insert(row9, bindings.R9.C01)
  table.insert(row9, bindings.R9.C02)
  table.insert(row9, bindings.R9.C03)
  table.insert(row9, bindings.R9.C04)
  table.insert(row9, bindings.R9.C05)
  table.insert(row9, bindings.R9.C06)
  table.insert(row9, bindings.R9.C07)
  table.insert(row9, bindings.R9.C08)
  table.insert(row9, bindings.R9.C09)
  table.insert(row9, bindings.R9.C10)
  table.insert(row9, bindings.R9.C11)
  table.insert(row9, bindings.R9.C12)

  local row10 = {}

  table.insert(row10, bindings.R10.C01)
  table.insert(row10, bindings.R10.C02)
  table.insert(row10, bindings.R10.C03)
  table.insert(row10, bindings.R10.C04)
  table.insert(row10, bindings.R10.C05)
  table.insert(row10, bindings.R10.C06)
  table.insert(row10, bindings.R10.C07)
  table.insert(row10, bindings.R10.C08)
  table.insert(row10, bindings.R10.C09)
  table.insert(row10, bindings.R10.C10)
  table.insert(row10, bindings.R10.C11)
  table.insert(row10, bindings.R10.C12)

  table.insert(keyboard.hotbar_rows, row1)
  table.insert(keyboard.hotbar_rows, row2)
  table.insert(keyboard.hotbar_rows, row3)
  table.insert(keyboard.hotbar_rows, row4)
  table.insert(keyboard.hotbar_rows, row5)
  table.insert(keyboard.hotbar_rows, row6)
  table.insert(keyboard.hotbar_rows, row7)
  table.insert(keyboard.hotbar_rows, row8)
  table.insert(keyboard.hotbar_rows, row9)
  table.insert(keyboard.hotbar_rows, row10)
end

function keyboard:cast_all_to_strings(settings)
  settings.Keybinds.R1.C01 = tostring(settings.Keybinds.R1.C01)
  settings.Keybinds.R1.C02 = tostring(settings.Keybinds.R1.C02)
  settings.Keybinds.R1.C03 = tostring(settings.Keybinds.R1.C03)
  settings.Keybinds.R1.C04 = tostring(settings.Keybinds.R1.C04)
  settings.Keybinds.R1.C05 = tostring(settings.Keybinds.R1.C05)
  settings.Keybinds.R1.C06 = tostring(settings.Keybinds.R1.C06)
  settings.Keybinds.R1.C07 = tostring(settings.Keybinds.R1.C07)
  settings.Keybinds.R1.C08 = tostring(settings.Keybinds.R1.C08)
  settings.Keybinds.R1.C09 = tostring(settings.Keybinds.R1.C09)
  settings.Keybinds.R1.C10 = tostring(settings.Keybinds.R1.C10)
  settings.Keybinds.R1.C11 = tostring(settings.Keybinds.R1.C11)
  settings.Keybinds.R1.C12 = tostring(settings.Keybinds.R1.C12)
  settings.Keybinds.R2.C01 = tostring(settings.Keybinds.R2.C01)
  settings.Keybinds.R2.C02 = tostring(settings.Keybinds.R2.C02)
  settings.Keybinds.R2.C03 = tostring(settings.Keybinds.R2.C03)
  settings.Keybinds.R2.C04 = tostring(settings.Keybinds.R2.C04)
  settings.Keybinds.R2.C05 = tostring(settings.Keybinds.R2.C05)
  settings.Keybinds.R2.C06 = tostring(settings.Keybinds.R2.C06)
  settings.Keybinds.R2.C07 = tostring(settings.Keybinds.R2.C07)
  settings.Keybinds.R2.C08 = tostring(settings.Keybinds.R2.C08)
  settings.Keybinds.R2.C09 = tostring(settings.Keybinds.R2.C09)
  settings.Keybinds.R2.C10 = tostring(settings.Keybinds.R2.C10)
  settings.Keybinds.R2.C11 = tostring(settings.Keybinds.R2.C11)
  settings.Keybinds.R2.C12 = tostring(settings.Keybinds.R2.C12)
  settings.Keybinds.R3.C01 = tostring(settings.Keybinds.R3.C01)
  settings.Keybinds.R3.C02 = tostring(settings.Keybinds.R3.C02)
  settings.Keybinds.R3.C03 = tostring(settings.Keybinds.R3.C03)
  settings.Keybinds.R3.C04 = tostring(settings.Keybinds.R3.C04)
  settings.Keybinds.R3.C05 = tostring(settings.Keybinds.R3.C05)
  settings.Keybinds.R3.C06 = tostring(settings.Keybinds.R3.C06)
  settings.Keybinds.R3.C07 = tostring(settings.Keybinds.R3.C07)
  settings.Keybinds.R3.C08 = tostring(settings.Keybinds.R3.C08)
  settings.Keybinds.R3.C09 = tostring(settings.Keybinds.R3.C09)
  settings.Keybinds.R3.C10 = tostring(settings.Keybinds.R3.C10)
  settings.Keybinds.R3.C11 = tostring(settings.Keybinds.R3.C11)
  settings.Keybinds.R3.C12 = tostring(settings.Keybinds.R3.C12)
  settings.Keybinds.R4.C01 = tostring(settings.Keybinds.R4.C01)
  settings.Keybinds.R4.C02 = tostring(settings.Keybinds.R4.C02)
  settings.Keybinds.R4.C03 = tostring(settings.Keybinds.R4.C03)
  settings.Keybinds.R4.C04 = tostring(settings.Keybinds.R4.C04)
  settings.Keybinds.R4.C05 = tostring(settings.Keybinds.R4.C05)
  settings.Keybinds.R4.C06 = tostring(settings.Keybinds.R4.C06)
  settings.Keybinds.R4.C07 = tostring(settings.Keybinds.R4.C07)
  settings.Keybinds.R4.C08 = tostring(settings.Keybinds.R4.C08)
  settings.Keybinds.R4.C09 = tostring(settings.Keybinds.R4.C09)
  settings.Keybinds.R4.C10 = tostring(settings.Keybinds.R4.C10)
  settings.Keybinds.R4.C11 = tostring(settings.Keybinds.R4.C11)
  settings.Keybinds.R4.C12 = tostring(settings.Keybinds.R4.C12)
  settings.Keybinds.R5.C01 = tostring(settings.Keybinds.R5.C01)
  settings.Keybinds.R5.C02 = tostring(settings.Keybinds.R5.C02)
  settings.Keybinds.R5.C03 = tostring(settings.Keybinds.R5.C03)
  settings.Keybinds.R5.C04 = tostring(settings.Keybinds.R5.C04)
  settings.Keybinds.R5.C05 = tostring(settings.Keybinds.R5.C05)
  settings.Keybinds.R5.C06 = tostring(settings.Keybinds.R5.C06)
  settings.Keybinds.R5.C07 = tostring(settings.Keybinds.R5.C07)
  settings.Keybinds.R5.C08 = tostring(settings.Keybinds.R5.C08)
  settings.Keybinds.R5.C09 = tostring(settings.Keybinds.R5.C09)
  settings.Keybinds.R5.C10 = tostring(settings.Keybinds.R5.C10)
  settings.Keybinds.R5.C11 = tostring(settings.Keybinds.R5.C11)
  settings.Keybinds.R5.C12 = tostring(settings.Keybinds.R5.C12)
  settings.Keybinds.R6.C01 = tostring(settings.Keybinds.R6.C01)
  settings.Keybinds.R6.C02 = tostring(settings.Keybinds.R6.C02)
  settings.Keybinds.R6.C03 = tostring(settings.Keybinds.R6.C03)
  settings.Keybinds.R6.C04 = tostring(settings.Keybinds.R6.C04)
  settings.Keybinds.R6.C05 = tostring(settings.Keybinds.R6.C05)
  settings.Keybinds.R6.C06 = tostring(settings.Keybinds.R6.C06)
  settings.Keybinds.R6.C07 = tostring(settings.Keybinds.R6.C07)
  settings.Keybinds.R6.C08 = tostring(settings.Keybinds.R6.C08)
  settings.Keybinds.R6.C09 = tostring(settings.Keybinds.R6.C09)
  settings.Keybinds.R6.C10 = tostring(settings.Keybinds.R6.C10)
  settings.Keybinds.R6.C11 = tostring(settings.Keybinds.R6.C11)
  settings.Keybinds.R6.C12 = tostring(settings.Keybinds.R6.C12)
  settings.Keybinds.R7.C01 = tostring(settings.Keybinds.R7.C01)
  settings.Keybinds.R7.C02 = tostring(settings.Keybinds.R7.C02)
  settings.Keybinds.R7.C03 = tostring(settings.Keybinds.R7.C03)
  settings.Keybinds.R7.C04 = tostring(settings.Keybinds.R7.C04)
  settings.Keybinds.R7.C05 = tostring(settings.Keybinds.R7.C05)
  settings.Keybinds.R7.C06 = tostring(settings.Keybinds.R7.C06)
  settings.Keybinds.R7.C07 = tostring(settings.Keybinds.R7.C07)
  settings.Keybinds.R7.C08 = tostring(settings.Keybinds.R7.C08)
  settings.Keybinds.R7.C09 = tostring(settings.Keybinds.R7.C09)
  settings.Keybinds.R7.C10 = tostring(settings.Keybinds.R7.C10)
  settings.Keybinds.R7.C11 = tostring(settings.Keybinds.R7.C11)
  settings.Keybinds.R7.C12 = tostring(settings.Keybinds.R7.C12)
  settings.Keybinds.R8.C01 = tostring(settings.Keybinds.R8.C01)
  settings.Keybinds.R8.C02 = tostring(settings.Keybinds.R8.C02)
  settings.Keybinds.R8.C03 = tostring(settings.Keybinds.R8.C03)
  settings.Keybinds.R8.C04 = tostring(settings.Keybinds.R8.C04)
  settings.Keybinds.R8.C05 = tostring(settings.Keybinds.R8.C05)
  settings.Keybinds.R8.C06 = tostring(settings.Keybinds.R8.C06)
  settings.Keybinds.R8.C07 = tostring(settings.Keybinds.R8.C07)
  settings.Keybinds.R8.C08 = tostring(settings.Keybinds.R8.C08)
  settings.Keybinds.R8.C09 = tostring(settings.Keybinds.R8.C09)
  settings.Keybinds.R8.C10 = tostring(settings.Keybinds.R8.C10)
  settings.Keybinds.R8.C11 = tostring(settings.Keybinds.R8.C11)
  settings.Keybinds.R8.C12 = tostring(settings.Keybinds.R8.C12)
  settings.Keybinds.R9.C01 = tostring(settings.Keybinds.R9.C01)
  settings.Keybinds.R9.C02 = tostring(settings.Keybinds.R9.C02)
  settings.Keybinds.R9.C03 = tostring(settings.Keybinds.R9.C03)
  settings.Keybinds.R9.C04 = tostring(settings.Keybinds.R9.C04)
  settings.Keybinds.R9.C05 = tostring(settings.Keybinds.R9.C05)
  settings.Keybinds.R9.C06 = tostring(settings.Keybinds.R9.C06)
  settings.Keybinds.R9.C07 = tostring(settings.Keybinds.R9.C07)
  settings.Keybinds.R9.C08 = tostring(settings.Keybinds.R9.C08)
  settings.Keybinds.R9.C09 = tostring(settings.Keybinds.R9.C09)
  settings.Keybinds.R9.C10 = tostring(settings.Keybinds.R9.C10)
  settings.Keybinds.R9.C11 = tostring(settings.Keybinds.R9.C11)
  settings.Keybinds.R9.C12 = tostring(settings.Keybinds.R9.C12)
  settings.Keybinds.R10.C01 = tostring(settings.Keybinds.R10.C01)
  settings.Keybinds.R10.C02 = tostring(settings.Keybinds.R10.C02)
  settings.Keybinds.R10.C03 = tostring(settings.Keybinds.R10.C03)
  settings.Keybinds.R10.C04 = tostring(settings.Keybinds.R10.C04)
  settings.Keybinds.R10.C05 = tostring(settings.Keybinds.R10.C05)
  settings.Keybinds.R10.C06 = tostring(settings.Keybinds.R10.C06)
  settings.Keybinds.R10.C07 = tostring(settings.Keybinds.R10.C07)
  settings.Keybinds.R10.C08 = tostring(settings.Keybinds.R10.C08)
  settings.Keybinds.R10.C09 = tostring(settings.Keybinds.R10.C09)
  settings.Keybinds.R10.C10 = tostring(settings.Keybinds.R10.C10)
  settings.Keybinds.R10.C11 = tostring(settings.Keybinds.R10.C11)
  settings.Keybinds.R10.C12 = tostring(settings.Keybinds.R10.C12)
end

function keyboard:parse_keybinds()
  for row_key, row_value in pairs(keyboard.hotbar_rows) do
    for col_key, col_value in pairs(row_value) do
      col_value = string.lower(col_value)
      col_value = string.gsub(col_value, " ", "")
      col_list = string.split(col_value, "+")
      if table.getn(col_list) ~= 1 then
        local has_shift = false
        for string_value in ipairs(col_list) do
          if (col_list[string_value] ~= "number") then
            if (col_list[string_value]:contains("ctrl")) then
              col_list[string_value] = "^"
            elseif (col_list[string_value]:contains("shift")) then
              -- Store shift as just "~"; the "%" no-menu prefix is added below
              col_list[string_value] = "~"
              has_shift = true
            elseif (col_list[string_value]:contains("alt")) then
              col_list[string_value] = "!"
            end
          end
        end
        col_value = table.concat((col_list), "")
        -- "%" prefix (fires only when chat/menu not open) is needed whenever
        -- shift is part of the combo, including triple-modifier binds.
        if has_shift then col_value = "%" .. col_value end
      else
        if type(col_list[1]) == "number" then
          col_value = "%" .. tostring(col_list[1])
        else
          col_value = "%" .. col_value
        end
      end
      if col_value then
        col_value = col_value:gsub('eq', '=')
        col_value = col_value:gsub('#', '')
      end
      row_value[col_key] = col_value
    end
    keyboard.hotbar_rows[row_key] = row_value
  end
end

-- bind keys --
function keyboard:bind_keys(rows, columns)
  for r = 1, rows do
    for s = 1, columns do
      if (self.hotbar_rows[r] ~= nil and self.hotbar_rows[r][s] ~= nil) then
        windower.send_command('bind ' .. keyboard.hotbar_rows[r][s] .. ' htb execute ' .. r .. ' ' .. s)
      end
    end
  end
end

function keyboard:unbind_keys(rows, columns)
  for r = 1, rows do
    for s = 1, columns do
      if (keyboard.hotbar_rows[r] ~= nil and keyboard.hotbar_rows[r][s] ~= nil) then
        windower.send_command('unbind ' .. keyboard.hotbar_rows[r][s])
      end
    end
  end
end

return keyboard
