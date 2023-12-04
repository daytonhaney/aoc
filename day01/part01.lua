function Day1(filename)
	local c = {}
	file = io.open(filename)
	for lines in file:lines() do
		fd = lines:match("%d")
		print(lines, fd)	
	end
	print("Reversed: OK")
	newFile = io.open(filename)
	for lines in newFile:lines() do
		reverselines = string.reverse(lines)
		sd = reverselines:match("%d")
		print(reverselines, sd)
	end
end


Day1("example.txt")