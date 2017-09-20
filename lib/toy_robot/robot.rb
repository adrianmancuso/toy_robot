module ToyRobot
  class Robot
    attr_reader :x_position, :y_position, :direction
    DIRECTIONS = ['NORTH', 'EAST', 'SOUTH', 'WEST']

    def initialize(x_position = 0, y_position = 0, direction = 'NORTH')
      @x_position = x_position
      @y_position = y_position
      @direction = direction
    end

    def move
      case @direction
      when 'NORTH' then @y_position += 1
      when 'EAST' then @x_position += 1
      when 'SOUTH' then @y_position -= 1
      when 'WEST' then @x_position -= 1
      end
    end

    def future_position
      case @direction
      when 'NORTH'
        [@x_position, @y_position + 1]
      when 'EAST'
        [@x_position + 1, @y_position]
      when 'SOUTH'
        [@x_position, @y_position - 1]
      when 'WEST'
        [@x_position - 1, @y_position]
      end
    end

    def turn_left
      turn(:left)
    end

    def turn_right
      turn(:right)
    end

    def report
      {
        y: y_position,
        x: x_position,
        direction: direction
      }
    end

    private

    def turn(turn_direction)
      current_index = DIRECTIONS.index(@direction)
      rotations = turn_direction == :right ? 1 : -1
      @direction = DIRECTIONS.rotate(rotations)[current_index]
    end
  end
end
