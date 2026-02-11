#### previous topic: [Pixels](SinterpixelsPixels.md)  next topic: [Movies](Movies.md)

##  Layers

Every document has a canvas, which consists of a background of pixels and an overlay of different shapes

A layer is essentially another canvas, which can have its own size, its own bitmap background and its own set of shapes.  Layers are positioned relative to the main canvas, but they can move independently of the main canvas.

If multiple layers are defined, they stack on top of each other.

Unlike some other graphics programs that have layers, the size and position of a layer are unconstrained by the main canvas -- they exist on their own, but only draw the parts of themselves that overlap the main canvas.

This can be used to define a layer for use as a "sprite" in an animation.
 
 
Examples: 
[Using blendCopy to punch through a layer](BlendCopyPunchThroughExample.md) 


#### previous topic: [Pixels](SinterpixelsPixels.md)  next topic: [Movies](Movies.md)
