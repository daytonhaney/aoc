local M = {}
function M.day02_part01(f)
	local t = 0
	local limits = {
		["red"] = 12,
		["green"] = 13,
		["blue"] = 14,
	}
	local file = io.open(f)
	for line in file:lines() do
		local no_dice = true
		for nums, cols in line:gmatch("(%d+) (%w+)") do
			if tonumber(nums) > limits[cols] then
				no_dice = false
				break
			end
		end
		if no_dice then
			t = t + tonumber(line:match("(%d+)"))
		end
	end

	print("\n P1: Total Games =  " .. t, "\n")
end

function M.day02_part02(f)
	local t = 0
	for line in io.lines(f) do
		local games = line:gsub("Game (%d+):", " ")
		print("\n", games)

		local max = {
			["red"] = 0,
			["green"] = 0,
			["blue"] = 0,
		}

		local pow = 1
		for nums, cols in games:gmatch("(%d+) (%w+)") do
			local num = tonumber(nums)

			if num > max[cols] then
				max[cols] = num
			end
		end
		for cols, max in pairs(max) do
			print(cols .. ": " .. max)
			pow = pow * max
		end
		t = t + pow
		print("line totals: " .. pow)
	end
	print("added totals: " .. t)
end
M.day02_part01("input.txt")
M.day02_part02("input.txt")
return M
