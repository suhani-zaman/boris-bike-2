require "DockingStation"

describe DockingStation do
    
    describe "Test if DockingStation responds to release_bike" do
    it { is_expected.to respond_to(:release_bike) }
    end

     it "Tests that DockingStation.release_bike gets a bike" do
      station = DockingStation.new
      expect(station.release_bike).to eq Bike.new
    end

    it "Released bike responds to 'working?'" do
      bike = (DockingStation.new).release_bike
      expect(bike.working?).to eq !nil
    end

end
