class DockingStation

	attr_reader :bike

	def dock_bike(bike)
		raise "This dock is full!" if @bike != nil
		@bike = bike
	end

	def release_bike
		raise "Not enough bikes!" if @bike == nil
	end
end

class Bike
	def working?
		true
	end
end