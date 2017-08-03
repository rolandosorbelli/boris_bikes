require "docking_station"

describe DockingStation do
	let(:bike) { double :bike }
	it "should respond to release_bike method" do
		# DockingStation.new.release_bike
		# expect(subject).to respond_to :release_bike
	end
	it "should respond to dock_bike method" do
		# bike = DockingStation.new.release_bike
		# DockingStation.new.dock_bike(bike)
	end

	it "should respond to bike" do
		bike = double(:bike)
		DockingStation.new.bike == true
	end

	it "check if the dock is full" do
		# docking_station = DockingStation.new
		expect(subject.capacity).to eq 20
	end

	it "raises an error when the dock is full" do
		# docking_station = DockingStation.new
		DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike :bike }
		expect {subject.dock_bike double(:bike)}.to raise_error("This dock is full!")
	end

	it "checks if bikes are not working" do
		# docking_station = DockingStation.new
		bike = double(:bike)
		allow(bike).to receive(:working=).and_return(false)
		allow(bike).to receive(:working?).and_return(false)
		subject.dock_bike bike
		expect(subject.bikes[0].working?).to eq false
	end

	it "checks if bikes are working" do
		# docking_station = DockingStation.new
		bike = double(:bike)
		allow(bike).to receive(:working=).and_return(true)
		allow(bike).to receive(:working?).and_return(true)
		subject.dock_bike bike
		expect(subject.bikes[0].working?).to eq true
	end
end