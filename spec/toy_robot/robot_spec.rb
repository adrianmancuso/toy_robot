require "spec_helper"

RSpec.describe ToyRobot::Robot do
  subject { ToyRobot::Robot.new(0) }

  it "moves 2 spaces north" do
    2.times { subject.move }
    expect(subject.y_position).to eq(2)
  end

  context "when facing north" do
    subject { ToyRobot::Robot.new(0, 0, "NORTH") }

    it "moves north" do
      subject.move
      expect(subject.y_position).to eq(1)
    end

    it "faces west after turning left" do
      subject.turn_left
      expect(subject.direction).to eq("WEST")
    end

    it "faces east after turning right" do
      subject.turn_right
      expect(subject.direction).to eq("EAST")
    end

    it "faces west after turning right 3 times" do
      3.times { subject.turn_right }
      expect(subject.direction).to eq("WEST")
    end
  end

  context "when facing south" do
    subject { ToyRobot::Robot.new(0, 0, "SOUTH") }

    it "moves south" do
      subject.move 
      expect(subject.y_position).to eq(-1)
    end

    it "faces east after turning left" do
      subject.turn_left
      expect(subject.direction).to eq("EAST")
    end

    it "faces west after turning right" do
      subject.turn_right
      expect(subject.direction).to eq("WEST")
    end
  end

  context "when facing east" do
    subject { ToyRobot::Robot.new(0, 0, "EAST") }

    it "moves east" do
      subject.move
      expect(subject.x_position).to eq(1)
    end

    it "faces north after turning left" do
      subject.turn_left
      expect(subject.direction).to eq("NORTH")
    end

    it "faces south after turning right" do
      subject.turn_right
      expect(subject.direction).to eq("SOUTH")
    end
  end

  context "when facing west" do
    subject { ToyRobot::Robot.new(0, 0, "WEST") }

    it "moves west" do
      subject.move
      expect(subject.x_position).to eq(-1)
    end

    it "faces south after turning left" do
      subject.turn_left
      expect(subject.direction).to eq("SOUTH")
    end

    it "faces east after turning left twice" do
      2.times { subject.turn_left }
      expect(subject.direction).to eq("EAST")
    end

    it "faces north after turning right" do
      subject.turn_right
      expect(subject.direction).to eq("NORTH")
    end
  end

  context "#report" do
    subject { ToyRobot::Robot.new(5, 4, "EAST") }

    it "displays the current location and orientation of the robot" do
      expect(subject.report).to eq({
        x: 5,
        y: 4,
        direction: "EAST"
        })
    end
  end
  
end