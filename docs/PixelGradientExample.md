#### Containing topic: [Pixels](SinterpixelsPixels.md) 

##  Pixels

This script makes a color gradient on the canvas.

First it goes row by row and set the red and blue components of the colors to a continuously varying value between 0 and 1.

Then, it goes column by column and sets the green component to a continuously varying value between 0 and 1.

The result is a gradient of green and magenta.

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


#### Containing topic: [Pixels](SinterpixelsPixels.md) 
