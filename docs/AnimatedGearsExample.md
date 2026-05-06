####  [Table of Contents](TableOfContents.md) 
#### Containing topic: [Movies](Movies.md) 

## Animating Gears

Here's an example of a simple animation of two gears, producing this movie:

![image](../images/AnimatedGears.mov "Animation of two gears")

Do make a gear shape, see the example here:
[Making A Gear Shape](GearShapeExample.md) 

In this example, we've made the gear teeth a little round.  Here's the script for our gear radius generation:

```
to gearList(teeth, notchDepth, depth)
	set gList to {}
	repeat with s from 1 to teeth
		set gList to gList & notchDepth
		set gList to gList & (notchDepth - depth / 4)
		set gList to gList & (notchDepth - depth)
		set gList to gList & (notchDepth - depth)
		set gList to gList & (notchDepth - depth / 4)
		set gList to gList & notchDepth
	end repeat
	return gList
end gearList
```
 
The first thing our script does is make two gears and positions them just the right amount apart:

```
set s1 to 7
set s2 to 9
set gList to gearList(s1, 50, 14)
set fList to gearList(s2, 50, 14)
set initialRotation1 to -6.28 / (s1 * 12)
set initialRotation2 to -6.28 / (s2 * 12)

tell application "SinterPixels"
	set newDoc to make new document with properties {height:300, width:420}
	tell newDoc

		
		set p1 to make new polygon with properties {radii:gList}
		set p2 to make new polygon with properties {radii:fList}
		set position of p1 to {44, 0}
		set position of p2 to {-44, 0}
		set rotation of p1 to initialRotation1
		set rotation of p2 to initialRotation2
```

One gear has 7 teeth and the other has nine.  With a radius of 50 and a notch depth of 14, you'd expect that the separation between the gears should be about 50 + 50 - 14, or about 86. In this example, we've placed them apart by 88 (there's the 44 and -44 values for the x coordinate when we set the position), because that seems to look a bit better.

We also adjust the initial rotation so that the teeth are aligned.

```
		start filming
		repeat with n from 0 to 200
			set rotation of p1 to initialRotation1 + n / (s1 * 4)
			set rotation of p2 to initialRotation2 - (n / (s2 * 4))
			record movie frame
		end repeat
		stop filming filename "AnimatedGears.mov"
end tell
```

In the movie section of the script, we loop 200 times.  For each movie frame, we adjust the rotation of each gear a bit. The amount of the rotation depends on the number of teeth of each gear. The 7 tooth gear is going to rotate faster than the 9 tooth gear, because that's how gears work.  One of the gears rotates clockwise, and the other rotates counterclockwise.  That's why there's a minus sign in the line

```
            set rotation of p2 to initialRotation2 - (n / (s2 * 4))
```

Try adjusting the s1 and s2 values to change the number of teeth on each gear to see if the animation still looks good

![image](../images/Simple7ToothGear.png "A gear with seven teeth")

#### Containing topic: [Movies](Movies.md) 
