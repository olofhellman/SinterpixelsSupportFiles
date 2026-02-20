####  [Table of Contents](TableOfContents.md) 
#### Containing topic: [Shapes](SinterpixelsShapes.md) 

## Color Spirals

Here's an example of using the HSB color space to make a playful color wheel

![image](../images/ColorSpiral.png "Color Spirals")

Colors can be specified using a components called Hue, Saturation and Brightness. The special feature of HSB is that hue, which specifies the color, cycles through all the colors as it goes between 0.0 and 1.0, and the color at 0.0 is the same as the color at 1.0.

So, in this example, the color is applied to each circle based on its position in radial coordinates:  hue corresponds to the angle, and brightness corresponds to the distance from the center.

```
set numSpirals to 7
set twoPi to 6.283
set twirliness to 2.2
set spiralLength to 18
set shellThickness to 10

tell application "SinterPixels"
	set newDoc to make new document with properties {height:300, width:420}
	tell newDoc
		repeat with radLoop from 1 to spiralLength
			set rad to shellThickness * radLoop
			repeat with angleLoop from 1 to numSpirals
				set ang to angleLoop * twoPi / numSpirals + radLoop * (twirliness / shellThickness)
				set h to (ang / twoPi)
				set b to (radLoop / shellThickness)
				
				set aColor to {hue:h, saturation:1.0, brightness:b}
				set bColor to {hue:h, saturation:0.5, brightness:b}
				set c1 to make new circle with properties {fill color:aColor, color:bColor, radius:radLoop + 2, position:{angle:ang, radius:rad}}
			end repeat
		end repeat
	end tell
end tell
```
 
Try adjusting the parameters at the top -- especially numSpirals and twirliness -- to get different results

![image](../images/Simple7ToothGear.png "A gear with seven teeth")

#### Containing topic: [Shapes](SinterpixelsShapes.md) 
