-- Found from https://www.computercraft.info/forums2/index.php?/topic/28231-nfp-viewer-nfp-as-startup/

if not fs.exists( "package" ) then shell.run( "pastebin get cUYTGbpb package" ) end
if not fs.exists( "GIF" ) then shell.run( "pastebin get 5uk9uRjC GIF" ) end

os.loadAPI( "package" )
os.loadAPI( "GIF" )

GIF.animateGIF( GIF.loadGIF( "yourGIF.gif" ), 1, 1, peripheral.find( "monitor", function(side, ob) ob.setTextScale(0.5) return ob.isColour() end ) )