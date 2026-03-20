
function love.load()

	rect = {
		size = {x = 100, y = 100, r = 10},
		positionx = {f = 100, s = 250, t = 400},
		positiony = 100}

end

function love.update(dt)
end

function love.draw()
	love.graphics.rectangle("line", rect.positionx.f, rect.positiony, rect.size.x, rect.size.y, rect.size.r)
	love.graphics.rectangle("line", rect.positionx.s, rect.positiony, rect.size.x, rect.size.y, rect.size.r)
	love.graphics.rectangle("line", rect.positionx.t, rect.positiony, rect.size.x, rect.size.y, rect.size.r)
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
end