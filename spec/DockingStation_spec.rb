require 'DockingStation'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    
    it 'releases a Bike' do
        bike= Bike.new
        expects(bike.release_bike).to_not be_nil
    end
end