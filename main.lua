
function love.load()

	rect = {
		size = {xy = 100, r = 10},
		position = 100--, 
		--[[250, 
		400},]]}

end

function love.update(dt)
end

function love.draw()
	love.graphics.rectangle("line", rect.position, rect.position, rect.size.xy, rect.size.xy, rect.size.r)
	--[[love.graphics.rectangle("line", rect[2][2], rect[3], rect[1][1], rect[1][1], rect[1][2])
	love.graphics.rectangle("line", rect[2][3], rect[3], rect[1][1], rect[1][1], rect[1][2])]]
	love.graphics.setBackgroundColor(226/255, 170/255, 255/255, 1)
end