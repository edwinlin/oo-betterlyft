class Passenger
	attr_reader :name
	@@all = []
	
	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		Ride.all.select do |ride|
			ride.passenger == self
		end
	end

	def drivers
		rides.map do |ride|
			ride.driver
		end
	end

	def total_distance
		dist = rides.inject(0) do |sum, ride|
			sum + ride.distance
		end
		dist
	end

	def self.premium_members

		self.all.select do |passenger|
			passenger.total_distance > 100
		end
	end
end