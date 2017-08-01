require "docking_station"

describe Bike do
	it "should respond to working? method" do
		bike = Bike.new
		bike.working? == true
		# expect(bike.working?).to eq true
	end
end