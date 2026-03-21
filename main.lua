
function love.load()

	rect = {
		size = {xy = 100, r = 10},
		padding = --[[5]]0,
		margin = --[[10]]0}--[[,
		positionx = {100, 
		250, 
		400},
		positiony = {100, 250, 400}}]]

	cells = {
		{"X", "_", "O"},
		{"X", "O", "_"},
		{"X", "O", "_"}}
end

function love.mousepressed(x, y, button)
	love.graphics.setBackgroundColor(0,0,0,0)
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
			--if positionX >= 2 then
				X = (positionX - 1) * (rect.size.xy + rect.padding) + rect.margin
			--elseif positionY >= 2 then
				Y = (positionY - 1) * (rect.size.xy + rect.padding) + rect.margin
			--end
			love.graphics.rectangle("line", X, Y, rect.size.xy, rect.size.xy, rect.size.r)
		end
	end
	for y = 1, 3 do
		for x = 1, 3 do
			X = (x - 1) * (rect.size.xy + rect.padding) + rect.margin
			--elseif positionY >= 2 then
			Y = (y - 1) * (rect.size.xy + rect.padding) + rect.margin
			love.graphics.print(cells[y][x], X + 50, Y + 50)
		end
	end
end