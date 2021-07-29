require "DockingStation"

describe DockingStation do

    describe "Test if DockingStation responds to release_bike" do
      it { is_expected.to respond_to(:release_bike) }
    end

    describe "Tests that reponds to dock bike" do
      it { is_expected.to respond_to(:dock_bike) }
    end

    it "Tests that DockingStation.release_bike gets a bike and then if it's working" do
      bike = Bike.new
      expect(bike).to be_a Bike
      expect(bike.working?).to eq true
    end

    it "checks if bike is available otherwise raises an error" do
      expect { subject.release_bike }.to raise_error "no bikes to release"
    end
end
