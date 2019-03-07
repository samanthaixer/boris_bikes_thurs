require 'docking_station'
describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'gets a bike and the bike is working' do
      my_bike = Bike.new
      subject.dock(my_bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'raise an exception if no bike is available to release' do
      expect{ subject.release_bike }.to raise_error("Cannot release a bike - no bikes docked")
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'shows the bike that has been docked' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'show a bike has been docked' do
      my_bike = Bike.new
      subject.dock(my_bike)
      expect(subject.bike).to eq my_bike
    end
  end
end
