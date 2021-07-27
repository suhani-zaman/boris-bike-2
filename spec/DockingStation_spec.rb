require "DockingStation"

describe DockingStation do
    
    describe "Test if DockingStation responds to release_bike" do
    it { is_expected.to respond_to(:release_bike) }
    end
end
