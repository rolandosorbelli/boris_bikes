class DockingStation

	attr_reader :bike

	def dock_bike(bike)
		@bike = bike
	end

	def release_bike
		if @bike == nil
			raise "Not enough bikes!"
		end
	end
end

class Bike
	def working?
		true
	end
end