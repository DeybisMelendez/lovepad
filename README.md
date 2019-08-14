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
id = "name",
x = 20,
y = 50,
radius = 50,
-- ...
}
```
Note: The button is instanced in `lovepad.buttons`.

## Button Properties

| Property | Type   |
|-----------|:------:|
|     x     | number |
|     y     | number |
|   radius  | number |
|    id     | string |
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
Returns `true` if the button `id` is pressed.
```lua
lovepad:remove(id)
```
Removes the button `id`
