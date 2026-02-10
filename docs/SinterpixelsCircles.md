#### previous topic: [Shapes Part 3](SinterpixelsShapes3.md)  next topic:  [Polygons Part One](SinterpixelsPolygons1.md)

## Circles

Circles have a unique property not shared by other shapes.  They have a **radius**

run the following script to see the effect of a changing radius

```
tell application "SinterPixels"
	tell document 1
		set c to make new circle
		set originalRadius to radius of c
		repeat with newR from originalRadius to 100
			set the radius of c to newR
		end repeat
		repeat with newR from 100 to originalRadius by -1
			set the radius of c to newR
		end repeat
	end tell
end tell
```
 
#### previous topic: [Shapes Part 3](SinterpixelsShapes3.md)  next topic:  [Polygons Part One](SinterpixelsPolygons1.md)
