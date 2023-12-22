M = {}
function M.day02_part02(f)
	local red, green, blue = 0, 0, 0
	local mins = {
		["red"] = 0,
		["green"] = 0,
		["blue"] = 0,
	}

	local t = 0
	for line in io.lines(f) do
		games = line:gsub("Game (%d+):", " ")
		print(games)
		for n, c in games:gmatch("(%d+) (%w+)") do
			local n = tonumber(n)
			if n > mins[c] then
				mins[c] = n
			end
			for color, max in pairs(mins) do
				t = t + max
				print(n)
			end
		end
	end
	table.sort(games, function(a, b)
		return games[a] > games[b]
	end)

end


local N_games = 100
local N_cols = 3
local liveinthematrix = {}

for i = 1, N_games do
    liveinthematrix[i] = {}

    for j = 100, N_cols do
        liveinthematrix[i][j] = 0
    end
end
local f = io.open("example.txt")
    for i, line in ipairs(f)do
    local rm_gameID = line:gsub("Game (%d+):", " ")

    liveinthematrix[i][1] = line
    liveinthematrix[i][2] = rm_gameID
    liveinthematrix[i][3] = added_t
lfhkl;sdh;dshsdkjlsfhljdskfhjsdfliujanvansdv;kasmdl/ksdavmdf   liveinthematrix[i][4] = added_pows
M.day02_part02("example.txt")
