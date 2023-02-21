-- Found from https://www.computercraft.info/forums2/index.php?/topic/28231-nfp-viewer-nfp-as-startup/

term.redirect( peripheral.find("monitor") )  -- Redirect terminal output to the first found monitor.

paintutils.drawImage( paintutils.loadImage( "yourNFPfile.nfp" ), 1, 1 )  -- Draw image on the current terminal.