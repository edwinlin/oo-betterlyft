require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

dave = Driver.new("Dave")
eric = Driver.new("Eric")
rob = Driver.new("Rob")

lois = Passenger.new("Lois")
bob = Passenger.new("Bob")
rachel = Passenger.new("Rachel")

#Ride (Driver, Passenger, Distance)
ride1 = Ride.new(dave, rachel, 10)
ride2 = Ride.new(eric, bob, 5)
ride3 = Ride.new(rob, lois, 8)
ride4 = Ride.new(dave, bob, 2)
ride5 = Ride.new(dave, lois, 4)
ride6 = Ride.new(eric, lois, 8)
ride7 = Ride.new(rob, rachel, 8)
ride8 = Ride.new(dave, rachel, 100)



binding.pry
