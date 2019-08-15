local lovepad = require 'lovepad'
lovepad:setGamePad(30, true)
local text, upr, upp, downr, downp = '', 0, 0, 0, 0
local leftr, leftp, rightr, rightp = 0, 0, 0, 0
local ar, ap, br, bp, xr, xp, yr, yp = 0, 0, 0, 0, 0, 0, 0, 0
function love.draw()
    love.graphics.printf(text, 0, 0, love.graphics.getWidth())
    lovepad:draw()
end
function love.update(_)
    lovepad:update()
    text = 'Button Up --> isDown: ' .. tostring(lovepad:isDown('Up'))
    .. ' Released count: ' .. upr .. ' Pressed count: ' .. upp ..
    '\n' .. 'Button Down --> isDown: ' .. tostring(lovepad:isDown('Down'))
    .. ' Released count: ' .. downr .. ' Pressed count: ' .. downp ..
    '\n' .. 'Button Left --> isDown: ' .. tostring(lovepad:isDown('Left'))
    .. ' Released count: ' .. leftr .. ' Pressed count: ' .. leftp ..
    '\n' .. 'Button Right --> isDown: ' .. tostring(lovepad:isDown('Right'))
    .. ' Released count: ' .. rightr .. ' Pressed count: ' .. rightp ..
    '\n' .. 'Button A --> isDown: ' .. tostring(lovepad:isDown('A'))
    .. ' Released count: ' .. ar .. ' Pressed count: ' .. ap ..
    '\n' .. 'Button B --> isDown: ' .. tostring(lovepad:isDown('B'))
    .. ' Released count: ' .. br .. ' Pressed count: ' .. bp ..
    '\n' .. 'Button X --> isDown: ' .. tostring(lovepad:isDown('X'))
    .. ' Released count: ' .. xr .. ' Pressed count: ' .. xp ..
    '\n' .. 'Button Y --> isDown: ' .. tostring(lovepad:isDown('Y'))
    .. ' Released count: ' .. yr .. ' Pressed count: ' .. yp

    if lovepad:isPressed('Up') then upp = upp + 1 end
    if lovepad:isPressed('Down') then downp = downp + 1 end
    if lovepad:isPressed('Left') then leftp = leftp + 1 end
    if lovepad:isPressed('Right') then rightp = rightp + 1 end
    if lovepad:isPressed('A') then ap = ap + 1 end
    if lovepad:isPressed('B') then bp = bp + 1 end
    if lovepad:isPressed('X') then xp = xp + 1 end
    if lovepad:isPressed('Y') then yp = yp + 1 end

    if lovepad:isReleased('Up') then upr = upr + 1 end
    if lovepad:isReleased('Down') then downr = downr + 1 end
    if lovepad:isReleased('Left') then leftr = leftr + 1 end
    if lovepad:isReleased('Right') then rightr = rightr + 1 end
    if lovepad:isReleased('A') then ar = ar + 1 end
    if lovepad:isReleased('B') then br = br + 1 end
    if lovepad:isReleased('X') then xr = xr + 1 end
    if lovepad:isReleased('Y') then yr = yr + 1 end
end
