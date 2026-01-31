tell application "SinterPixels"
	tell document 1
		repeat 100 times
			repeat 3 times
				set ccount to count circles
				
				set deleteIds to {}
				repeat with c from 1 to ccount
					set rad to ((radius of circle c) + 1)
					if rad > 80 then
						set deleteIds to deleteIds & ID of circle c
					else
						if rad > 60 then
							set alpha component of color of circle c to (80 - rad) * 0.05
						end if
						if rad > 20 then
							set line width of circle c to ((80 - rad) / 12)
						end if
						set radius of circle c to rad
					end if
				end repeat
				delete circle id deleteIds
			end repeat
			make new circle with properties {radius:2, line width:5, fill color:clear}
		end repeat
		
	end tell
end tell