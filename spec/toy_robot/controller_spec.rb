require "spec_helper"

RSpec.describe ToyRobot::Controller do
  let(:table) { ToyRobot::Table.new(5, 5) }
  subject { ToyRobot::Controller.new(table) }

  it "places the robot on a valid position" do 
    expect(ToyRobot::Robot).to receive(:new)
      .with(0, 0, "NORTH")
      .and_return(double)
    subject.place(0, 0, "NORTH")
    expect(subject.robot).not_to be_nil
  end

  it "cannot place the robot on an invalid position" do
    expect(ToyRobot::Robot).not_to receive(:new)
    subject.place(7, 5, "NORTH")
    expect(subject.robot).to be_nil
  end
  
end