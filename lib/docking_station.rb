class DockingStation
	attr_reader :bike
	
	def dock_bike(bike)
		@bike = bike
	end

	def release_bike
		Bike.new
	end
end

class Bike
	def working?
		true
	end
end