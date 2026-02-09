#### previous topic: [Shapes Part 1](SinterpixelsShapes.md)  next topic: [Shapes Part 3](SinterpixelsShapes3.md)

## Shapes Part Two: Colors

Just like position, if we don't specify a color when making a new circle, one gets chosen automatically. Actually, there are two colors that get chose,

There is a **color**, which is used to draw the perimeter of the circle, and the **fill color**, which is used to draw the interior.  Lets see how Sinterpixels specifies colors by running this script:

```
tell application "SinterPixels"
	tell document 1
		get the fill color of circle 1
	end tell
end tell
```

You should see something like this in the ScriptEditor result window:

```
{red component:0.12027516216, green component:0.983362913132, blue component:0.465224981308, alpha component:1.0}
```

These are the four components of the [RGBA color model](https://en.wikipedia.org/wiki/RGBA_color_model).  All of these values are in the range from 0.0 and 1.0. The red green and blue values roughly correspond to how bright the red green and blue emitters on a monitor should be. The alpha value is a special "transparency" value, that matters when the color is combined with another color.  If the alpha is 0, none of the color will get transferred to a surface. If the values are all 1.0, that's white. If the ed green and blue values are all zero, that's black.

Try setting the color of one of the circles using an RBGA value, and set the radius of the circle to something larger so we can see the color better:

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to {red component:0.5, green component:1.0, blue component:0.8, alpha component:1.0}
		set the radius of circle 1 to 50
	end tell
end tell
```

Sinterpixels also allows other ways of specifying color

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

The names of many simply colors, like "blue", "black", "green" are understood by Sinterpixels:

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to blue
	end tell
end tell
```

This is especially useful for specifying a color as "clear", so that it is transparent. In this case only the perimeter is drawn -- we use the property **line width** to specify how thick the perimeter should be:

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

If you want the shortest possible way to specify colors, use a list to specify RGB (and optionally A) in that order:

```
tell application "SinterPixels"
	tell document 1
		set the fill color of circle 1 to {1.0, 0.9, 0.7}
	end tell
end tell
```

Other color models (HSL, CMYK) will be supported soon.

To summarize:

The **fill color** is the color of the interior of a shape, and the ** color** is the color used to draw the perimeter.  Colors are defined in the RGBA color space. 

**alpha component**, **red component**, **green component**, and **blue component** can be used to access the individual components of a color.  Or, colors can be expressed as a list of values :  {0.5, 1.0, 0.5, 0.9} would be used to specify a fairly green color that is just a tiny bit transparent.

Colors can also be specified by enumeration.  For example, "green" or "yellow" are valid colors.  "clear" means a color with an alpha component of 0.0.

**line width** determines the thickness of the perimeter.

And, lastly, **blend mode** determines how a shape is composited on top of its background.  The default blend mode is "paintOver".  A particularly interesting blend mode is **blendCopy** when used with a shape with a clear fill color.  This can be used to create transparent regions in an image or in a layer.
 
See the [Punch Though a Layer Example](BlendCopyPunchThrough.md) for a trick on using a blend mode to get a different effect when drawing a circle.

#### previous topic: [Shapes Part 1](SinterpixelsShapes.md)  next topic: [Shapes Part 3](SinterpixelsShapes3.md)
