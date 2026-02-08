tell application "SinterPixels"
	tell document 1
		set alpha component of every pixel to 1.0
		set ht to height of canvas
		set wt to width of canvas
		repeat with h from 1 to ht
			set red component of every pixel of row h to h / ht
			set blue component of every pixel of row h to h / ht
		end repeat
		repeat with w from 1 to wt
			 set green component of every pixel of column w to w / wt
		end repeat
	end tell
end tell