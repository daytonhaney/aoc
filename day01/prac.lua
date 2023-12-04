function Day1(filename)
	file = io.open(filename)
	for lines in file:lines() do
		c = {}
		local calibrator = 0
		fd = lines:match("%d")
		reverse = string.reverse(lines)
		ld = reverse:match("%d")


		print(fd .. ld)




		--ld = reverselines:match("%d+")


	end
end



Day1("input.txt")