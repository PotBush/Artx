import argparse
import subprocess
import os

# Create an argument parser
parser = argparse.ArgumentParser(description="Brightness Adjuster")

# Add an argument for brightness adjustments
parser.add_argument('brightness_direction', choices = {'up', 'down'});

# Parse the command-line arguments
args = parser.parse_args()


# Determine the direction of the brightness adjustment
if args.brightness_direction == 'up':

    # Increases brightness by 10%
    subprocess.run(['brightnessctl', 'set', '+1%'])

    # Gets new current brightness
    current_brightness = int(subprocess.run(['brightnessctl', 'get'], capture_output=True, text=True).stdout.strip())

    # Calculate brightness percebtage
    brightness_percentage = int(current_brightness / 1 * 100)

    # Dysplay notification using dunstify
    existing_notification = os.system('dunstify -p -a "brightness" -r 12345 "Brightness: ' + str(brightness_percentage) + '%"')
    if existing_notification == 0:
        os.system('dunstify -p -u normal -r 12345 "Brightness: ' + str(brightness_percentage) + '%" >/dev/null')
    else:
        os.system('dunstify -p -a "brightness" -r 12345 "Brightness: ' + str(brightness_percentage) + '%" >/dev/null')

elif args.brightness_direction == 'down':

    subprocess.run(['brightnessctl', 'set', '1%-'])

    current_brightness = int(subprocess.run(['brightnessctl', 'get'], capture_output=True, text=True).stdout.strip())

    brightness_percentage = int(current_brightness / 1 * 100)

    existing_notification = os.system('dunstify -p -a "brightness" -r 12345 "Brightness: ' + str(brightness_percentage) + '%"')
    if existing_notification == 0:
        os.system('dunstify -p -u "brightness" -r 12345 "Brightness: ' + str(brightness_percentage) + '%"')
    else:
        os.system('dunstify -p -a "brightness" -r 12345 "Brightness: ' + str(brightness_percentage) + '%"')
    
else:
    print("Invalid argument for brightness direction. Please enter 'up' or 'down'.")
