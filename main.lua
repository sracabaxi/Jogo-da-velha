
function love.load()

	rect = {
		size = {100, 10},
		positionx = {100, 250, 400},
		positiony = 100}

end

function love.update(dt)
end

function love.draw()
	love.graphics.rectangle("line", rect.positionx[1], rect.positiony, rect.size[1], rect.size[1], rect.size[2])
	love.graphics.rectangle("line", rect.positionx[2], rect.positiony, rect.size[1], rect.size[1], rect.size[2])
	love.graphics.rectangle("line", rect.positionx[3], rect.positiony, rect.size[1], rect.size[1], rect.size[2])
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
end