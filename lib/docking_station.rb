class DockingStation

	attr_reader :bikes, :bike

	def initialize
		@bikes = []
	end

	def dock_bike(bike)
		raise "This dock is full!" if full?
		@bikes << bike
	end

	def release_bike
		raise "Not enough bikes!" if empty?
		@bikes.pop
	end

	private
	
	def full?
		@bikes.size >= 20
	end

	def empty?
		@bikes.size == 0
	end
end

class Bike
	def working?
		true
	end
end