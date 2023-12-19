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
    print(t)
end

M.day02_part01("input.txt")
return M
