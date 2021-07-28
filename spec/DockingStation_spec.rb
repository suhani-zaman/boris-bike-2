require "DockingStation"

describe DockingStation do

    describe "Test if DockingStation responds to release_bike" do
      it { is_expected.to respond_to(:release_bike) }
    end

    describe "Tests that reponds to dock bike" do
      it { is_expected.to respond_to(:dock_bike) }
    end

    it "Tests that DockingStation.release_bike gets a bike and then if it's working" do
      station = DockingStation.new
      expect(station.release_bike).to be_a Bike
      expect(station.release_bike.working?).to eq true
    end

    it "Test that DockingStation.dock docks a bike" do
      station = DockingStation.new
      expect(station.dock_bike).not_to be_empty
    end

    

end
