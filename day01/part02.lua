function day1_part2(filename)
	calibrator = 0
	file = io.open(filename)
	for lines in file:lines() do
		c = {}
		--		print(lines)
		fd = lines:match("%d")
		reverse = string.reverse(lines)
		ld = reverse:match("%d")
		--		print(fd .. ld)

		calibrator = calibrator + tonumber(fd .. ld)

		local vals = {
			"one",
			"two",
			"three",
			"four",
			"five",
			"six",
			"seven",
			"eight",
			"nine",
		}

		ints = {
			1,
			2,
			3,
			4,
			5,
			6,
			7,
			8,
			9,
		}

		--for i = 1, #vals and #ints do
		---	print(lines, vals[i], ints[i]) end
		swap_one = lines:gsub("one", "1")
		swap_two = swap_one:gsub("two", "2")
		swap_three = swap_two:gsub("three", "3")
		swap_four = swap_three:gsub("four", "4")
		swap_five = swap_four:gsub("five", "5")
		swap_six = swap_five:gsub("six", "6")
		swap_seven = swap_six:gsub("seven", "7")
		swap_eight = swap_seven:gsub("eight", "8")
		swap_nine_swapped_up = swap_eight:gsub("nine", "9")

		x = lines:gsub("one", " ")
		print("this is the swap for one -->", swap_nine_swapped_up)
	end
end

day1_part2("input.txt")
