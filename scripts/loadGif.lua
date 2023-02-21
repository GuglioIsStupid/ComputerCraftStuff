-- example from https://www.computercraft.info/forums2/index.php?/topic/23056-gif-api/
os.loadAPI("GIF")

local mon = peripheral.find("monitor")

local gifs = fs.find("*.gif")  -- Note: fs.find() is case-sensitive, even if your file system isn't.

mon.setTextScale(0.5)
local x, y = mon.getSize()

while true do for i = 1, #gifs do
        local image = GIF.loadGIF(gifs[i])
        mon.setBackgroundColour(image[1].transparentCol or image.backgroundCol)
        mon.clear()
        
        parallel.waitForAny(
                function()
                        GIF.animateGIF(image, math.floor((x - image.width) / 2) + 1, math.floor((y - image.height) / 2) + 1, mon)
                end,
                
                function()
                        sleep(10)
                end
        )
end end