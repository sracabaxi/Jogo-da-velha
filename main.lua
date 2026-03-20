
function love.load()

	rect = {{100, 10}, {100, 250, 400},100}

end

function love.update(dt)
end

function love.draw()
	love.graphics.rectangle("line", rect[2][1], rect[3], rect[1][1], rect[1][1], rect[1][2])
	love.graphics.rectangle("line", rect[2][2], rect[3], rect[1][1], rect[1][1], rect[1][2])
	love.graphics.rectangle("line", rect[2][3], rect[3], rect[1][1], rect[1][1], rect[1][2])
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
end