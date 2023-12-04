function Day1(filename)
	file = io.open(filename)
	for lines in file:lines() do
		local calibrator = 0
		c = {}
		fd = lines:match("%d")
		reverselines = string.reverse(lines)
		ld = reverselines:match("%d+")


		calibrator = calibrator + tonumber(fd .. ld)
		print(calibrator)

	end
    calibrate = 12 + 38 + 15 + 77
    print(calibrate)
end

Day1("example.txt")