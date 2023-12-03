function day1(file)
	local file = io.open("example.txt", "rb")
	local read_file = file:read("*all")
	print(read_file)
end

day1("example.txt")
