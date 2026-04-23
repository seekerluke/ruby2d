require 'ruby2d'

# Window has a default camera, you can set its values
cam = get :camera

# Width and height are based on camera zoom and window size (or viewport size if set)
cam.x = -cam.width / 2
cam.y = -cam.height / 2

blue = Square.new(color: 'blue')
red = Square.new(size: 50, color: 'red')
green = Circle.new(x: 100, y: 100, color: 'green')

update do
  cam.angle += 1
  cam.zoom = Math.sin(cam.angle * 0.01) + 1.5

  # Square size controlled by the camera bounds
  blue.size = -cam.width / 4

  # Mouse coordinates are automatically corrected
  mx = get :mouse_x
  my = get :mouse_y
  red.color = red.contains?(mx, my) ? 'white' : 'red'
  green.color = green.contains?(mx, my) ? 'white' : 'green'
end

show
