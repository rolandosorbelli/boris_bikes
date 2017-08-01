require "docking_station"

describe DockingStation do
	it "should respond to release_bike method" do
		DockingStation.new.release_bike == true
		# expect(subject).to respond_to :release_bike
	end
end