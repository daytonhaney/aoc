function day1_part2(filename)
	t = {}
	calibrator = 0

	file = io.open(filename)

	for line in file:lines() do
		main = true
		-- only need to check for strings tbh %d
		one = line:gsub("one", "one1one")
		two = one:gsub("two", "two2two")
		three = two:gsub("three", "three3three")
		four = three:gsub("four", "four4four")
		five = four:gsub("five", "five5five")
		six = five:gsub("six", "six6six")
		seven = six:gsub("seven", "seven7seven")
		eight = seven:gsub("eight", "eight8eight")
		nine = eight:gsub("nine", "nine9nine")
		fd = nine:match("%d")
		reverse_list = string.reverse(nine)
		sd = reverse_list:match("%d")
		print(nine, "\n\nfirst digit:", fd, "\n\nsecond digit:", sd)
		calibrator = calibrator + tonumber(fd .. sd)
	end

	print("\n", "total: ", calibrator)
end

day1_part2("input.txt")
