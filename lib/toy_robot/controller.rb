module ToyRobot
  class Controller
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(x_point, y_point, cardinal_direction)
      return unless @table.valid_location?(x_point, y_point)
      @robot = Robot.new(x_point, y_point, cardinal_direction)
      @placed = true
    end

    def move
      return unless @placed
      return unless @table.valid_location?(*robot.future_position)
      robot.move
    end

    def left
      return unless @placed
      robot.turn_left
    end

    def right
      return unless @placed
      robot.turn_right
    end

    def report
      return unless @placed
      response = robot.report
      puts "X: #{response[:x]}, Y: #{response[:y]}, Facing: #{response[:direction]}"
    end
  end
end
