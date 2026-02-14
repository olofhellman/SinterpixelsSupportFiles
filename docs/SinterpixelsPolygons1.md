####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Circles](SinterpixelsCircles.md)  next topic:  [Polygons Part Two](SinterpixelsPolygons2.md)

## Polygons Part One: 

Let's explore what makes a polygon a polygon.  First run the following script to make a new one, then get is properties to see what it knows about itself:

```
tell application "SinterPixels"
	tell document 1
		set p to make new polygon
        get properties of p
	end tell
end tell
```

The result should show something like this (reformatted for easier reading here):

```
{
 container:canvas id 4 of application "SinterPixels", 
 id:57, 
 class:polygon,
 position:{x coordinate:107.59364, 
           y coordinate:96.01183}, 
 blend mode:paintOver, 
 closed:true, 
 line width:1.0, 
 fill paint:{red component:0.904275, 
             green component:0.042626, 
             blue component:0.455397, 
             alpha component:1.0}, 
 color:{red component:0.883484, 
        green component:0.51492, 
        blue component:0.28979, 
        alpha component:1.0},
 rotation:0.01624, 
 vertex count:5
}
```

The first four properties, "container", "class", "id" and "name" are shared by many types of objects.  You are free to set the name of a shape, and then use that later to identify it, as in:

```
tell application "SinterPixels"
	tell document 1
		set p to make new polygon with properties {name: "Eric"}
        get properties of polygon "Eric"
	end tell
end tell
```

Although if you give multiple shapes the same name, you may not get what you expect.

The next five properties are common to all shapes: "position", "blend mode",  "line width", "fill paint", "color".

Only three properties are unique to polygons: "closed", "rotation" and "vertex count".  

Try running this script to spin a polygon:

```
tell application "SinterPixels"
	tell document 1
		set p to make new polygon with properties {vertex count:5, radius 20}
        repeat 100 times
            set r to get rotation of p
            set rotation of p to  r + 0.05
        end
	end tell
end tell
```
 
**rotation** is specified in degrees.  If you want to specify in radians, use **radians rotation**

**closed** means is there a line drawn from the last vertex to the first

**vertex count** means how many vertices there are.  Despite what you might think, you can't write a script to set the vertex count.  We'll see why on the next page.

 
#### previous topic: [Circles](SinterpixelsCircles.md)  next topic:  [Polygons Part Two](SinterpixelsPolygons2.md)
