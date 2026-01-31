#### previous topic: [Shapes](SinterpixelsShapes.md)  next topic: [Layers](SinterpixelsLayers.md)

##  Pixels

Every document starts with a canvas, and every canvas has a background of pixels. If a new document is created, the background of pixels is transparent, but if a document is created from a PNG file, mast of the pixels will probably be filled in

The individual components of the colors of each pixel can be manipulated by a script.  Here's a script that fills in the whole canvas with a yellow/blue gradient:

```
tell application "SinterPixels"
	tell document 1
		set alpha component of every pixel to 1.0
		set ht to height of canvas
		set wt to width of canvas
		repeat with h from 1 to ht
			set red component of every pixel of row h to h / ht
			set blue component of every pixel of row h to h / ht
		end repeat
		repeat with w from 1 to wt
			set green component of every pixel of column w to w / wt
		end repeat
	end tell
end tell
```



#### previous topic: [Shapes](SinterpixelsShapes.md)  next topic: [Layers](SinterpixelsLayers.md)
