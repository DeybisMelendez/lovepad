# lovepad
Virtual gamepad for love2d

## How to use

Download `lovepad.lua` and write in your `main.lua`:
```lua
lovepad = require "lovepad"
```

## Creating a button

```lua
lovepad:new{
text = "name",
x = 20,
y = 50,
radius = 50,
-- ...
}
```
Note: The button is instanced in `lovepad.buttons`.

## Creating a simple gamepad

```lua
lovepad:setGamePad()
```

## Screenshot, read main.lua



## Button Properties

| Property | Type   |
|-----------|:------:|
|     x     | number |
|     y     | number |
|   radius  | number |
|    text   | string |
|   font    | Font   |
|colorFont  | table {r, g, b, a} |
|normalColor| table {r, g, b, a} |
|pressedColor| table {r, g, b, a} |
|    mode     | string ("fill" or "line") |

## Functions

```lua
lovepad:draw()
```
Draws the buttons.

```lua
lovepad:update()
```
Updates the buttons.

```lua
lovepad:isDown(id)
```
Returns `true` if the button `id` (text value) is pressed.

```lua
lovepad:isPressed(id)
```
Returns `true` if the button `id` (text value) is pressed once.

```lua
lovepad:isReleased(id)
```
Returns `true` if the button `id` (text value) is released.

```lua
lovepad:remove(id)
```
Removes the button `id` (text value)
