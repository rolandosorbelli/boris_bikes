class DockingStation

	attr_accessor :bikes, :bike, :capacity
	DEFAULT_CAPACITY = 20 # <--- Default capacity of the dock ~

	def initialize(capacity = DEFAULT_CAPACITY) # <--- Initializes the array that represents the dock and its capacity ~
		@bikes = []
		@capacity = capacity
	end

	def dock_bike(bike, working = true)
		raise "This dock is full!" if full?
		@bikes << bike
	end

	def release_bike
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
		@working
	end

	def working?
		@working
	end

end

class Van

	attr_accessor :van

	def initialize
		@van = []
		
	end

	def take_broken_bikes(bike)
		if bike.working? != true
			@van << bike
		else raise "This bike is working perfectly, no need to fix it!"
		end
	end

end

class Garage

	attr_accessor :garage

	def initialize
		@garage = []
	end

	def deliver_broken_bikes
		stored_bikes = van.each { | x | van.delete_at(x) }
		@garage << stored_bikes
	end

end