# Godot 4.6 Gamepad LED Color Example

A simple example showing how to control gamepad LED colors with smooth transitions in Godot Engine 4.6.

<p align="center">
  <img src="https://github.com/Soup-o-Stat/Godot-4.6-Gamepad-LED-Color-Example/blob/main/video.gif" alt="gif" />
</p>

## Features

- Control gamepad LED color via Godot's Input system
- Smooth color transitions using lerp
- Automatic color cycling every 0.5 seconds
- Support for multiple gamepads (adjustable device_id)

## Quick Start

1. **Clone the repository:**
2. **Open godot_project in Godot 4.6+**
3. **Connect a compatible gamepad** (PS4/PS5)
4. **Run the project**

## How It Works

The code cycles through four colors (red, green, blue, yellow) with smooth transitions:

```gdscript
# Set LED color
Input.set_joy_light(device_id, current_color)

# Smooth transition between colors
current_color = current_color.lerp(target_color, delta * fade_speed)
```

## Configuration

- `device_id`: Gamepad device number (default: 0 = first connected gamepad)
- `colors`: Array of Color objects to cycle through
- `fade_speed`: Transition speed (default: 2)
- `timer.wait_time`: Time between color changes (default: 0.5 seconds)

## Requirements

- Godot Engine 4.6 or newer
- Compatible gamepad (PS4, PS5, or similar with LED support)
