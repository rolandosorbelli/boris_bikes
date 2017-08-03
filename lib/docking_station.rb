class DockingStation

	attr_reader :bikes, :bike, :capacity
	DEFAULT_CAPACITY = 20 # <--- Default capacity of the dock ~

	def initialize(capacity = DEFAULT_CAPACITY) # <--- Initializes the array that represents the dock and its capacity ~
		@bikes = []
		@capacity = capacity
	end

	def dock_bike(bike, working = true)
		raise "This dock is full!" if full?
		bike.working = working
		@bikes << bike
	end

	def release_bike(bike)
		raise "Not enough bikes!" if empty?
		@bikes
		@bikes.pop
	end

	private

	def full? # <--- Default capacity of a full dock ~
		@bikes.size >= DEFAULT_CAPACITY
	end

	def empty? # <--- Default capacity of an empty dock ~
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