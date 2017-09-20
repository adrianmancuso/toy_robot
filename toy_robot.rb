require_relative 'lib/toy_robot'

table = ToyRobot::Table.new(5, 5)
controller = ToyRobot::Controller.new(table)

puts "Welcome to Ruby's Robots!" 
puts"Feel free to PLACE a robot on a board and make it MOVE around." 
puts "Unfortunately our robots can only MOVE forward so you might have to ask them to turn LEFT or RIGHT." 
puts "If you get lost just ask the robot to REPORT and feel free to EXIT at any time"

user_input = ''

while user_input != 'EXIT'
  user_input = gets.chomp
  case user_input
  when /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/
        controller.place $~[:x].to_i, $~[:y].to_i, $~[:direction]
  when 'MOVE' then controller.move
  when 'LEFT' then controller.left
  when 'RIGHT' then controller.right
  when 'REPORT' then controller.report
  end
end
