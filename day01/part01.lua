function Day1(filename)
	calibrator = 0
	file = io.open(filename)
	for lines in file:lines() do
		c = {}
		fd = lines:match("%d")
		reverse = string.reverse(lines)
		ld = reverse:match("%d")
		print(fd ..ld)
		
		calibrator = calibrator + tonumber(fd .. ld)
		--print(calibrator)
		print(type(calibrator), "plus")

	end
	print(" = ",calibrator)
end



Day1("input.txt")

