require "DockingStation"

describe DockingStation do
    
    describe "Test if DockingStation responds to release_bike" do
      it { is_expected.to respond_to(:release_bike) }
    end

    describe "Tests that reponds to dock bike" do
      it { is_expected.to respond_to(:dock) }
    end

    it "Tests that DockingStation.release_bike gets a bike and then if it's working" do
      bike = Bike.new
      expect(bike).to be_a Bike
      expect(bike.working?).to eq true
    end

    it "checks if bike is available otherwise raises an error" do
      expect { subject.release_bike }.to raise_error "no bikes to release"
    end
    it "check if dock station exceeds the limit provided" do
      20.times { subject.dock}
      expect { subject.dock}.to raise_error "Dock station full"
    end
    it 'takes given custom capacity or set default value 20' do
      expect(subject.capacity).to eq 20
      newlimit = DockingStation.new(35)
      expect(newlimit.capacity).to eq 35
    end
    it "checks if bike is broken or working" do
      bike = Bike.new
      expect(bike.working?).to eq true
      bike2 = Bike.new('broken')
      expect(bike2.working?).to eq false
    end
    it "checks bike is broken when returning the bike " do
      bike = Bike.new("broken")
      expect { subject.dock(bike)}.to raise_error "Bike is broken"
    end
    it "broken bikes are not released and raises error " do
      bike = Bike.new("broken")
      subject.dockstation.push(bike)
      expect { subject.release_bike }.to raise_error "Bike is broken! try another one"
    end
    it 'docks both broken & functioning bikes' do
      bike = Bike.new("broken")
      subject.dockstation.push(bike)
      bike2 = Bike.new("functioning")
      subject.dockstation.push(bike2)
      expect(subject.dockstation.count).to eq 2
    end
end
