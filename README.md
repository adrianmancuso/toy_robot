# Toy Robot Test
The ruby toy robot coding puzzle as made by <a href="https://joneaves.wordpress.com/2014/07/21/toy-robot-coding-test/">Jon Eaves</a>. A command line app which simulates a robot moving on a 5 x 5 grid.

I wanted to keep this version pretty basic whilst abstracting the robot, table and controller away from one another. In a future version I will likely include the ability to read commands from a file. 

## Dependencies
This solution was built using Rspec v3.6 for testing and Ruby v2.4 

If you're experiencing any problems running the files please be sure that your Ruby and Rspec versions match the ones above.

## How to run
 Clone or download from Github. If downloaded as a .zip unzip the archive and navigate to the 'ruby_robot' folder in your terminal (containing the spec and lib folders and `toy_robot.rb` file).

From this folder you can run `rspec spec` to see a bunch of tests pass or you can run `ruby toy_robot.rb` to start the application.

## Commands
The application takes the following commands:
`PLACE X,Y,DIRECTION` (eg PLACE 2,2,EAST) - places robot on designated co-ordinate and facing in designated direction
`LEFT` - turns robot 90 degrees counter-clockwise
`RIGHT` - turns robot 90 degrees clockwise
`MOVE` - advances robot 1 space forward
`REPORT` - gives X, Y position and facing direction of robot
`EXIT` - exits application

### Please note:
The robot can not take any commands when it is not placed on the table, other than a valid `PLACE` command.

The table size is 5 x 5 and any commands that would cause the robot to fall off the table are in direct violation of Asimov's third law of robotics and a such are ignored for the safety of the machinery.