local dt = peripheral.find("environmentDetector")
local mt = peripheral.find("monitor")

local radR = dt.getRadiationRaw()
local rad = dt.getRadiation()

function radLv()
  local mult = 10^2
  return math.floor(dt.getRadiationRaw() * mult + 0.5) / mult
end


term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()



 while true do
 
    if dt.getRadiationRaw() == 1e-07 then
        term.clear()
        term.setCursorPos(1,1)
        print("Radiation: 0 Sv")
        os.sleep(1)
      else
        term.clear()
        term.setCursorPos(1,1)
        print("Radiation: " .. radLv() .. " Sv")
        os.sleep(1)
 end
end
