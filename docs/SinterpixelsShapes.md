#### previous topic: [The Scripting Interface](TheScriptingInterface.md)  next topic: [Pixels](SinterpixelsPixels.md)

## Shapes

There are currently two kinds of shapes in Sinterpixels: the circle and the polygon

Circles and polygons have a few properties in common.

The **position** determines where a shape is drawn in its container.  In general, the position {0,0} draws a shape in the middle of its container

**x coordinate** and **y coordinate** can be used to access the individual components of the position.

The **fill color** is the color of the interior of a shape, and the ** color** is the color used to draw the perimeter.  Colors are defined in the RGBA color space. 

**alpha component**, **red component**, **green component**, and **blue component** can be used to access the individual components of a color.  Or, colors can be expressed as a list of values :  {0.5, 1.0, 0.5, 1.0} would be used to specify a fairly green color.

Colors can also be specified by enumeration.  For example, "green" or "yellow" are valid colors.  "clear" means a color with an alpha component of 0.0.

**line width** determines the thickness of the perimeter.

And, lastly, **blend mode** determines how a shape is composited on top of its background.  The default blend mode is "paintOver".  A particularly interesting blend mode is **blendCopy** when used with a shape with a clear fill color.  This can be used to create transparent regions in an image or in a layer.
  
[Using blendCopy to punch through a layer](BlendCopyPunchThrough.md) 

#### previous topic: [The Scripting Interface](TheScriptingInterface.md)  next topic: [Pixels](SinterpixelsPixels.md)
