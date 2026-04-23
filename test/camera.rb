require 'ruby2d'

red = Square.new(x: 10, y: 10, size: 50, color: 'red')
green = Circle.new(x: 100, y: 100, color: 'green')

w = get :width
h = get :height

# Window has a default camera, you can set its values
cam = get :camera
cam.x = -w / 2
cam.y = -h / 2

update do
  cam.angle += 1
  cam.zoom = Math.sin(cam.angle * 0.01) + 1.5

  # Mouse coordinates are automatically corrected
  mx = get :mouse_x
  my = get :mouse_y
  red.color = red.contains?(mx, my) ? 'white' : 'red'
  green.color = green.contains?(mx, my) ? 'white' : 'green'
end

show
