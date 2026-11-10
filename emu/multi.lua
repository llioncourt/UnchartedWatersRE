-- take screenshots at given frames; optional button presses
local outdir = os.getenv("OUTDIR")
local shots = {}
for s in string.gmatch(os.getenv("SHOTS") or "", "[^,]+") do shots[tonumber(s)] = true end
local press = {}
for s in string.gmatch(os.getenv("PRESS") or "", "[^,]+") do
  local f, b = string.match(s, "(%d+):(%a+)"); press[tonumber(f)] = b
end
local last = tonumber(os.getenv("LAST") or "600")
local hijack = tonumber(os.getenv("HIJACK") or "-1")
for i=1,last do
  if press[i] then local t = {}; t[press[i]] = true; joypad.set(1, t) end
  if i == hijack then memory.setregister("pc", 0xC000) end
  emu.frameadvance()
  if shots[i] then gui.savescreenshotas(string.format("%s/f%05d.png", outdir, i)) end
end
emu.exit()
