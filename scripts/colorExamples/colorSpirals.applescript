set numSpirals to 7
set twoPi to 6.283
set twirliness to 2.2
set spiralLength to 18
set shellThickness to 10

tell application "SinterPixels"
	tell document 1
		delete every shape
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