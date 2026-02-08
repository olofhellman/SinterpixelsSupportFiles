to gearRadii(numberOfTeeth, rad, depth)
	set gList to {}
	repeat with s from 1 to numberOfTeeth
		set gList to gList & rad
		set gList to gList & rad
		set gList to gList & (rad - depth)
		set gList to gList & (rad - depth)
		set gList to gList & (rad - depth)
		set gList to gList & rad
		set gList to gList & rad
	end repeat
	return gList
end gearRadii

-- make a list of radii for a gear with 7 teeth, radius of 50, notch depth of 12
set gearRadiiList to gearRadii(7, 50, 12)
tell application "SinterPixels"
	tell document 1
		delete every shape
		make new polygon with properties {radii: gearRadiiList, position:{0, 0}}
	end tell
end tell

gearRadiiList