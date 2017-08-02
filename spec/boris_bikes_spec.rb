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
		DockingStation::DEFAULT_CAPACITY.times {docking_station.dock_bike(Bike.new)}
		expect {docking_station.dock_bike(Bike.new)}.to raise_error("This dock is full!")
	end

	it "raises and error when the dock is full" do
		docking_station = DockingStation.new
		expect(docking_station.capacity).to eq 20
	end

	it "checks if bikes are not working" do
		docking_station = DockingStation.new
		bike = Bike.new
		docking_station.dock_bike(bike, false)
		expect(docking_station.bikes[0].working?).to eq false
	end
end