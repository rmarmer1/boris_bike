require_relative 'bike'

class DockingStation
	BIKE_CAPACITY = 20

	def initialize(bike_capacity = BIKE_CAPACITY)
		@capacity = bike_capacity
		@bikes = []
	end

	attr_reader :bikes, :capacity

# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike 
	fail 'No bikes available' if @bikes.empty?
	@bikes.pop
end

def dock(bike)
	# changed greater than to greater than or equal to => made test pass!!!!
	fail "Docking station full: exceeded capacity" if @bikes.count >= @capacity
	@bikes << bike

end

private

def full?
	@bikes.count == @capacity
end

def empty?
#bikes = []
@bikes.count == 0
end

end
