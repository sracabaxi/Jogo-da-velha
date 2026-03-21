
function love.load()
	
	display = { 
		width = love.graphics.getWidth(),
		height = love.graphics.getHeight()}
	
	rect = {
		size = {xy = display.height / 3, r = 10},
		padding = 0,
		margin = {x = 0, y = 0}}
		
	cells = {
		{"X", "_", "O"},
		{"X", "O", "_"},
		{"X", "O", "_"}}
end

function love.mousepressed(x, y, button)
	local Xposition = math.floor((x - rect.margin.x) / (rect.size.xy + rect.padding) + 1)
	local Yposition = math.floor((y - rect.margin.y) / (rect.size.xy + rect.padding) + 1)
	if Xposition > 3 or Yposition > 3 or Xposition < 1 or Yposition < 1 then
		return
	end
	cells[Yposition][Xposition] = 0
end

function love.update(dt)
	
end

function love.draw()
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
	for positionY = 1, 3 do
		for positionX = 1, 3 do
			local xsize = rect.size.xy * 3 + rect.padding * 2
			local middle = positionX * (display.width / 2 - xsize / 2)
			--local X = (positionX - 1) * (rect.size.xy + rect.padding) + rect.margin.x 
			local Y = (positionY - 1) * (rect.size.xy + rect.padding) + rect.margin.y
			love.graphics.rectangle("line", middle, Y, rect.size.xy, rect.size.xy, rect.size.r)
		end
	end
	for y = 1, 3 do
		for x = 1, 3 do
			X = (x - 1) * (rect.size.xy + rect.padding) + rect.margin.x
			Y = (y - 1) * (rect.size.xy + rect.padding) + rect.margin.y
			love.graphics.print(cells[y][x], X + 50, Y + 50)
		end
	end
end