#### previous topic: [Pixels Part 2](SinterpixelsPixels2.md)  next topic: [Layers](SinterpixelsLayers.md)

##  Pixels part 3: Setting colors

Every document starts with a canvas, and every canvas has a background of pixels. If a new document is created, the background of pixels is transparent, but if a document is created from a PNG file, most of the pixels will probably be filled in.

The individual components of the colors of each pixel can be manipulated by a script.  Here's a script that fills in the whole canvas with a yellow/blue gradient:

[Pixel Gradient Example](PixelGradientExample.md)

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

![image](../images/GreenMagentaGradient.png "A green and magenta gradient on the canvas")

In the above script we used "every pixel of row h" and "every pixel of column w" to set the color of many pixels at the same time.  We can also set the colors of the pixels individually like this:

```
tell application "SinterPixels"
	tell document 1
		set the alpha component of every pixel of the canvas to 1.0
		set ht to height of canvas
		set wt to width of canvas
		repeat with h from 1 to ht
			repeat with w from 1 to wt
				set green component of pixel id {w, h} to 1.0
			end repeat
		end repeat
	end tell
end tell
```

But that script is really slow! AppleScript isn't very performant, and if you can avoid setting each pixel individually like that, you probably should.

#### previous topic: [Pixels Part 2](SinterpixelsPixels2.md)  next topic: [Layers](SinterpixelsLayers.md)
