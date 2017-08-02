class DockingStation

	attr_reader :bikes, :bike, :capacity
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def dock_bike(bike, working = true)
		raise "This dock is full!" if full?
		bike.working = working
		@bikes << bike
	end

	def release_bike
		raise "Not enough bikes!" if empty?
		@bikes.pop
	end

	private

	def full?
		@bikes.size >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.size == 0
	end
end

class Bike

	attr_accessor :working

	def initialize
		@working = true
	end

	def working?
		@working
	end
end