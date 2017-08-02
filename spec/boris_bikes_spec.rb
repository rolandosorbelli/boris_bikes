require "docking_station"

describe DockingStation do
	it "should respond to release_bike method" do
		# DockingStation.new.release_bike
		# expect(subject).to respond_to :release_bike
	end
	it "should respond to dock_bike method" do
		# bike = DockingStation.new.release_bike
		# DockingStation.new.dock_bike(bike)
	end

	it "should respond to bike" do
		bike = Bike.new
		DockingStation.new.bike == true
	end

	it "raises and error when the dock is full" do
		docking_station = DockingStation.new
		20.times {docking_station.dock_bike(Bike.new)}
		expect {docking_station.dock_bike(Bike.new)}.to raise_error("This dock is full!")
	end
end