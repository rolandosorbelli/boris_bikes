require "docking_station"

describe DockingStation do
	it "should respond to release_bike method" do
		DockingStation.new.release_bike == true
		# expect(subject).to respond_to :release_bike
	end
	it "should respond to dock_bike method" do
		bike = DockingStation.new.release_bike
		DockingStation.new.dock_bike(bike) == true
	end

	it "should respond to bike" do
		bike = Bike.new
		DockingStation.new.bike == true
	end
end