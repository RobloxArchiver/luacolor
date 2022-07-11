local function ascii_encode(color_code, text)
	local color_code = tostring(color_code) or "0m"
	local text = tostring(text)
	local new_text = "\27[" .. color_code .. text
	
	return new_text .. "\27[0m"
end

function getcolors(range)
    if range >= 255 then
        for i=0, range_2 do
          print(ascii_encode(tostring(i) .. "m", tostring(i)))
        end
    end
end
