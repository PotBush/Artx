local ags = require('ags')

-- Function to get the current volume
local function get_volume()
    local handle = io.popen("pactl get-sink-volume @DEFAULT_SINK@")
    local output = handle:read("*a")
    handle:close()
    return output:match("(%d+)%%") or "N/A"
end

-- Function to get the current brightness
local function get_brightness()
    local handle = io.popen("brightnessctl g")
    local output = handle:read("*a")
    handle:close()
    return output:match("(%d+)") or "N/A"
end

-- Create the settings dropdown widget
local settings_widget = ags.Window {
    title = "Settings",
    width = 300,
    height = 200,
    widgets = {
        ags.Panel {
            orientation = 'vertical',
            margin = 10,
            padding = 10,
            spacing = 5,
            widgets = {
                ags.Label {
                    text = "System Settings",
                    font = "JetBrains Mono Bold 16"
                },
                ags.Label {
                    text = "Volume: " .. get_volume() .. "%",
                    font = "JetBrains Mono 12"
                },
                ags.Button {
                    label = "Increase Volume",
                    on_click = function()
                        io.popen("pactl set-sink-volume @DEFAULT_SINK@ +5%"):close()
                        settings_widget:get_widget("volume_label").text = "Volume: " .. get_volume() .. "%"
                    end
                },
                ags.Button {
                    label = "Decrease Volume",
                    on_click = function()
                        io.popen("pactl set-sink-volume @DEFAULT_SINK@ -5%"):close()
                        settings_widget:get_widget("volume_label").text = "Volume: " .. get_volume() .. "%"
                    end
                },
                ags.Label {
                    id = "brightness_label",
                    text = "Brightness: " .. get_brightness() .. "%",
                    font = "JetBrains Mono 12"
                },
                ags.Button {
                    label = "Increase Brightness",
                    on_click = function()
                        io.popen("brightnessctl s +10%"):close()
                        settings_widget:get_widget("brightness_label").text = "Brightness: " .. get_brightness() .. "%"
                    end
                },
                ags.Button {
                    label = "Decrease Brightness",
                    on_click = function()
                        io.popen("brightnessctl s -10%"):close()
                        settings_widget:get_widget("brightness_label").text = "Brightness: " .. get_brightness() .. "%"
                    end
                }
            }
        }
    }
}

-- Show the widget
settings_widget:show()
