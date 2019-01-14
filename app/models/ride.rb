class Ride
	attr_accessor :driver, :passenger, :distance
	@@all = []

	def self.all
		@@all
	end

	def initialize(driver, passenger, distance)
		@driver = driver
		@passenger = passenger
		@distance = distance
		@@all << self
	end

	def self.average_distance
		result = self.all.inject(0) do |sum, ride|
			sum + ride.distance
		end
		result / self.all.length
	end

end