class Driver
	attr_accessor :name
	@@all = []
	@@distance = 0
	
	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		Ride.all.select do |ride|
			ride.driver == self
		end
	end

	def total_distance
		dist = rides.inject(0) do |sum, ride|
			sum + ride.distance
		end
		dist
	end

	def passenger_names
		rides.map do |ride|
			ride.passenger.name
		end.uniq
	end

	def self.mileage_cap(distance)
		self.all.select do |driver|
			driver.total_distance > distance
		end
	end

end
