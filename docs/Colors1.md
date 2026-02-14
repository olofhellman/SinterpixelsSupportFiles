####  [Table of Contents](TableOfContents.md) 
#### previous topic: [Shapes Part Three](SinterpixelsPolygons3.md)  next topic: [Blend Modes](Colors2.md)

## Colors Part 1: Specifying Colors

### The default: RGBA

Sinterpixels allows multiple ways of specifying color, but the default way is to use red, green, blue and alpha components like this:

```
{red component:0.5, green component:0.5, blue component:0, alpha component:1.0}
```

### Hue, Saturation, and Brightness

To use Hue, Saturation, and Brightness, the HSB color model, you can write a script like this:

```
tell application "SinterPixels"
    set hsbColor to {hue component:0.6, saturation component:1.0, brightness component:0.8}
	tell document 1
		set the fill color of circle 1 to hsbColor
	end tell
end tell
```

See the [Color Spirals Example](ColorSpiralsExample.md) for a lesson how HSB is a useful color model.


### Enumerations

The names of many simply colors, like "blue", "black", "green" are understood by Sinterpixels:

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to blue
	end tell
end tell
```

This is especially useful for specifying a color as "clear", so that it is transparent. In this case only the perimeter is drawn.

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to clear
		set the color of circle 1 to green
		set the line width of circle 1 to 10
	end tell
end tell
```

Note that the perimeter is drawn centering on the radius, so specifying a larger line width increases the apparent size of the circle


### Just a List of Numbers

If you want the shortest possible way to specify colors, use a list to specify RGB (and optionally A) in that order:

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to {1.0, 0.8, 0.6}
	end tell
end tell
```

If you only specify 3 values for a color, it is assumed that the alpha component is 1.0

Other color models (HSL, CMYK) will be supported soon. 

#### previous topic: [Shapes Part Three](SinterpixelsPolygons3.md)  next topic: [Blend Modes](Colors2.md)
