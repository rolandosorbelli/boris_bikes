require "docking_station"

describe Van do

	let(:bike) { double (:bike) }
	it "raises an error when the bike is working" do
		bike = double(:bike, working?: true)
		expect {subject.take_broken_bikes(bike)}.to raise_error("This bike is working perfectly, no need to fix it!")
	end

end