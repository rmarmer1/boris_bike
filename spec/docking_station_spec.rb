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
end