local lovepad = {buttons = {}}
local mt = {x = 0, y = 0, radius = 40, id = "button", font = love.graphics.getFont(), colorFont = {1, 1, 1, 1},
normalColor = {1, 0, 0, 1}, pressedColor = {0,1,0,0.5}, _color = {0, 0, 0, 0}, mode = "fill"}
function lovepad:new(o)
	o = o or {}
	setmetatable(o, {__index = mt})
	table.insert(self.buttons, o)
end

function lovepad:draw()
	for _, button in ipairs(self.buttons) do
		love.graphics.setColor(button._color)
		love.graphics.circle(button.mode, button.x, button.y, button.radius)
		love.graphics.setColor(button.colorFont)
		love.graphics.printf(button.id, button.x - button.radius, button.y - button.font:getHeight()/2, button.radius * 2, "center")
	end
	love.graphics.setColor(1, 1, 1, 1)
end

function lovepad:update()
	local touches = love.touch.getTouches()
	for _, button in ipairs(self.buttons) do
		button._color = button.normalColor
		button.isDown = false
		for index, touch in ipairs(touches) do
		    local xt, yt = love.touch.getPosition(touch)
			if (math.abs((xt - button.x))^2 + math.abs((yt - button.y))^2)^0.5 < button.radius then
				button._color = button.pressedColor
				button.isDown = true
			end
		end
	end
end

function lovepad:isDown(id)
	for _, button in ipairs(self.buttons) do
		if button.id == id then return button.isDown end
	end
end

function lovepad:remove(id)
    for index, button in ipairs(self.buttons) do
        if button.id == id then table.remove(self.buttons, index)
		return true
    end
	return false
end

return lovepad
