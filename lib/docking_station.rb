class DockingStation

	attr_reader :bikes, :bike

	def initialize
		@bikes = []
	end

	def dock_bike(bike)
		raise "This dock is full!" if @bikes.size == 20
		@bikes << bike
	end

	def release_bike
		raise "Not enough bikes!" if @bikes.size == 0
		@bikes.pop
	end
end

class Bike
	def working?
		true
	end
end