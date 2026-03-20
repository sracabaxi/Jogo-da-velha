
function love.load()

	rect = {
		size = {xy = 100, r = 10},
		positionx = {100, 
		250, 
		400},
		positiony = {100, 250, 400}}

	cells = {
		{"X", "_", "O"},
		{"X", "O", "_"},
		{"X", "O", "_"}}
end

function love.update(dt)
end

function love.draw()
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
	--love.graphics.rectangle("line", rect.position, rect.position, rect.size.xy, rect.size.xy, rect.size.r)
	--[[love.graphics.rectangle("line", rect[2][2], rect[3], rect[1][1], rect[1][1], rect[1][2])
	love.graphics.rectangle("line", rect[2][3], rect[3], rect[1][1], rect[1][1], rect[1][2])]]
	--[[for i = 1, 3 do
		local I = i - 1
		love.graphics.print(cells.Top[i], I * 25, 0)
	end
	for i = 1, 3 do
		local I = i - 1
		love.graphics.print(cells.Mid[i], I * 25, 15)
	end
	for i = 1, 3 do
		local I = i - 1
		love.graphics.print(cells.Bot[i], I * 25, 30)
	end
	for y = 1, 3 do
		for x = 1, 3 do
			local X = x - 1
			local Y = y - 1
			--love.graphics.print(cells[y][x], X * 25, Y * 25)
		end
	end]]
	for positionY = 1, 3 do
		for positionX = 1, 3 do
			love.graphics.rectangle("line", rect.positionx[positionX], rect.positiony[positionY], rect.size.xy, rect.size.xy, rect.size.r)
		end
	end
end