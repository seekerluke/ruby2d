# frozen_string_literal: true

# Ruby2D::Camera

module Ruby2D
  # A camera that can be attached to the window to control where graphics are displayed.
  # To attach a new camera to the window:
  # +set camera: Camera.new+
  class Camera
    attr_accessor :x, :y, :angle, :zoom

    # Create a camera
    # @param x [Numeric]
    # @param y [Numeric]
    # @param angle [Numeric] Angle in degrees
    # @param zoom [Numeric]
    def initialize(x: 0, y: 0, angle: 0, zoom: 1)
      @x = x
      @y = y
      @angle = angle
      @zoom = zoom
    end

    def width
      (Window.viewport_width || Window.width) / @zoom
    end

    def height
      (Window.viewport_height || Window.height) / @zoom
    end

    # Apply camera positions, handled by the window
    def apply
      ext_set_view(@x, @y, @angle, @zoom, @zoom)
    end
  end
end
