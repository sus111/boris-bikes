require 'docking_station'

describe DockingStation do
  #it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
      it "raises an error if no bikes available" do
          expect { subject.release_bike }.to raise_error "No bikes available"
      end

      it "releases a bike" do
          subject.dock(bike = Bike.new)
          expect(subject.release_bike).to eq bike
      end

      it "holds 20 bikes and releases a bike" do
          20.times {  subject.dock(bike = Bike.new) }
          expect(subject.release_bike).to be_a Bike
      end
  end

  #it { is_expected.to respond_to(:dock).with(1).argument }
#
  #it { is_expected.to respond_to(:show_last_bike) }

  describe '#dock' do
      it "raises an error if docking station already has a bike" do
          20.times {subject.dock(Bike.new)}
          expect { subject.dock Bike.new }.to raise_error "Docking Station full"
      end

      it "remembers/docks bike" do
          bike = Bike.new
          expect(subject.dock(bike)).to eq bike
      end
  end

  it "shows the docked bike" do
      2.times {   bike = Bike.new
                  subject.dock(bike)
                  expect(subject.show_last_bike).to eq bike
              }
      #bike0 = Bike.new
      #subject.dock(bike0)
      #expect(subject.show_last_bike).to eq bike
  end

  #it "raises an error if no bikes in docking station" do
  #  expect { if @bike.empty?  }. to raise_error
  #end
end
