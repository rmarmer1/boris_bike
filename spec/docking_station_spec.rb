
require 'docking_station'

describe DockingStation do
	it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	end

	# it "returns the *default* bike dock capacity if no argument is given" do
	# 	doc = DockingStation.new
	# 	p "==========="
	# 	p doc.capacity
	# 	p "==========="

	# 	expect(doc.capacity).to eq 20
	# end
	it "sets the *default* capacity if no argument is given" do
		DockingStation.new
		20.times { subject.dock Bike.new }
		expect { subject.dock(Bike.new)}.to raise_error "Docking station full: exceeded capacity"	
	end

	it "accepts a new number and reinitializes the bike dock capacity" do

		DockingStation.new(1)
	end	

	it "returns a working bike" do
		subject.dock Bike.new 

		bike = subject.release_bike
		p "===================="
		p bike
		p "===================="
		expect(bike).to be_working
	end

	it "allows a user to report a bike as broken when docking a bike" do
		rental_bike = Bike.new
		p "=====Before======"
		p rental_bike.working
		p "==========="
		expect(rental_bike.working == false)
		p "=====After======"
		p rental_bike.working
		p "==========="

	end

	it "responds to dock" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "Docks a bike when passed one" do
		#expect(subject.dock(Bike.new)).to eq bikes
		expect(subject.dock(Bike.new))
	end

	describe '#dock' do

		it 'raises an error when user tries to dock more than 20 bikes' do
			20.times { subject.dock Bike.new }
			# subject.dock(Bike.new)
			# p "=============="
			# p subject.bikes.count
			# p "=============="
			expect { subject.dock(Bike.new)}.to raise_error "Docking station full: exceeded capacity"

		end
	end

	it "responds to bikes" do
		expect(subject).to respond_to :bikes
	end

	it "returns number of docked bikes" do
		# p "==========="
		# p @bikes
		# p "==========="
		expect(@bikes)
	end

	it "releases a previously docked bike" do
		bike_inst = Bike.new
		subject.dock(bike_inst)
		expect(subject.release_bike).to eq bike_inst
	end

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	describe '#full?' do
		it "tells user if dock is full or not" do
			20.times { subject.dock Bike.new }
			expect((subject.send :full?) == true)
		end
	end

	describe '#empty?' do
		it "tells user if dock is empty or not" do
			DockingStation.new
			expect ((subject.send :empty?) == true)
		end
	end
end	

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.