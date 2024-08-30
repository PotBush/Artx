local ags = require('ags')
local volume = require('volume') -- You may need a Lua module for volume control

-- Function to update the volume level
local function update_volume()
    local handle = io.popen("pactl get-sink-volume @DEFAULT_SINK@")
    local output = handle:read("*a")
    handle:close()
    
    local volume_level = output:match("(%d+)%%")
    return volume_level or "N/A"
end

-- Create the volume control widget
local volume_widget = ags.Panel {
    orientation = 'vertical',
    width = 200,
    margin = 10,
    padding = 10,
    spacing = 5,
    widgets = {
        ags.Label {
            text = "Volume",
            font = "JetBrains Mono Bold 14"
        },
        ags.Label {
            id = "volume_level",
            text = update_volume(),
            font = "JetBrains Mono 12"
        },
        ags.Button {
            label = "Mute/Unmute",
            on_click = function()
                io.popen("pactl set-sink-mute @DEFAULT_SINK@ toggle"):close()
                -- Update volume display
                volume_widget:get_widget("volume_level").text = update_volume()
            end
        },
        ags.Button {
            label = "Increase",
            on_click = function()
                io.popen("pactl set-sink-volume @DEFAULT_SINK@ +5%"):close()
                -- Update volume display
                volume_widget:get_widget("volume_level").text = update_volume()
            end
        },
        ags.Button {
            label = "Decrease",
            on_click = function()
                io.popen("pactl set-sink-volume @DEFAULT_SINK@ -5%"):close()
                -- Update volume display
                volume_widget:get_widget("volume_level").text = update_volume()
            end
        }
    }
}

-- Periodically update volume level
local function update_periodically()
    while true do
        volume_widget:get_widget("volume_level").text = update_volume()
        ags.sleep(1) -- Update every 1 second
    end
end

-- Start the update loop
ags.spawn(update_periodically)

-- Show the widget
volume_widget:show()
