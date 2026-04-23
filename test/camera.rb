require 'ruby2d'

Square.new(x: 10, y: 10, size: 50, color: 'red')
Circle.new(x: 100, y: 100, color: 'green')

cam = get :camera
cam.x = -100
cam.y = -100
cam.zoom = 2

update do
  cam.angle += 1
end

show
