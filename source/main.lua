local luacolor = {}

local function ascii_encode(color_code, text)
	local color_code = tostring(color_code) or "0m"
	local text = tostring(text)
	local new_text = "\27[" .. color_code .. "m" .. text
	
	return new_text .. "\27[0m"
end

function luacolor.custom(code, text)
	return ascii_encode(code, text)
end

function luacolor.reset(text)
	return ascii_encode("0", text)
end

function luacolor.bold(text)
	return ascii_encode("1", text)
end

function luacolor.italic(text)
	return ascii_encode("3". text)
end

function luacolor.underline(text)
	return ascii_encode("4", text)
end

function luacolor.black(text)
	return ascii_encode("30", text)
end

function luacolor.red(text)
	return ascii_encode("31", text)
end

function luacolor.red_bold(text)
	return ascii_encode("31;1", text)
end

function luacolor.green(text)
	return ascii_encode("32", text)
end

function luacolor.yellow(text)
	return ascii_encode("33", text)
end

function luacolor.cyan(text)
	return ascii_encode("34", text)
end

function luacolor.magenta(text)
	return ascii_encode("35", text)
end

function luacolor.blue(text)
	return ascii_encode("36", text)
end

function luacolor.white(text)
	return ascii_encode("37", text)
end

return luacolor
