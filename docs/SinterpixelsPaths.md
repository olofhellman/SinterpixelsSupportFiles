####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Shapes Part 3](SinterpixelsShapes3.md)  next topic:  [Polygons Part One](SinterpixelsPolygons1.md)

## Circles

Circles have a unique property not shared by other shapes.  They have a **radius**

run the following script to see the effect of a changing radius

```
tell application "SinterPixels"
	if not (exists document 1) then make new document
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

Like all shapes, circles also have a property **line width**. This specifies how thick the perimeter should be:

```
tell application "SinterPixels"
	if not (exists document 1) then make new document
	tell document 1
	    make new circle with properties {line width: 10, radius: 25, color: green, fill color: white }
	end tell
end tell
```

Note that the radius is measured to the middle of the perimeter line.  This means that a circle with a thicker line width will actually be larger on screen that a circle with a narrower one. 
 
#### previous topic: [Shapes Part 3](SinterpixelsShapes3.md)  next topic:  [Polygons Part One](SinterpixelsPolygons1.md)
