require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
      it "raises an error if no bikes available" do
        expect { subject.release_bike }.to raise_error "No bikes available"
      end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  describe '#dock' do
    it "raises an error if docking station already has a bike" do
        subject.dock(Bike.new) 
        expect { subject.dock Bike.new }.to raise_error "Docking Station full"
    end


  it "remembers/docks bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end

  it "shows the docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  #it "raises an error if no bikes in docking station" do
  #  expect { if @bike.empty?  }. to raise_error
  #end


end
