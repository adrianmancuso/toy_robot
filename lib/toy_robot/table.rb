module ToyRobot
  class Table
    def initialize(width, length)
      @width = width
      @length = length
    end

    def valid_location?(x_point, y_point)
      (0...@width).cover?(x_point) &&
      (0...@length).cover?(y_point)
    end
  end
end
