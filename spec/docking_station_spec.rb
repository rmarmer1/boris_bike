<<<<<<< HEAD
require 'docking_station'

describe DockingStation do
	it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	end

	it "returns a working bike" do
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it "responds to dock" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "Docks a bike when passed one" do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	it "responds to bike" do
		expect(subject).to respond_to :bike
	end

	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike).to eq bike
	end
	

=======
require 'DockingStation'

describe DockingStation do 

	it {is_expected.to respond_to :release_bike}

	it 'releases a bike' do
		bike = DockingStation
		expect(bike).to_not be_nil
		# bike = docking_station.release_bike
		# expect(bikeobj.working? == true)
	end
	
	# Add a test to your DockingStation specification that a) gets 
	# a bike, and then b) expects the bike to be working
>>>>>>> 22492203216c03220e31a0c17229491cabc3cab9
end