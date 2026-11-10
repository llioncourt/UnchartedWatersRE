local frames = tonumber(os.getenv("FRAMES") or "180")
local out = os.getenv("OUT")
for i=1,frames do emu.frameadvance() end
gui.savescreenshotas(out)
emu.frameadvance()
emu.exit()
