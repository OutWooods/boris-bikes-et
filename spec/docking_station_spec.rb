require './lib/docking_station.rb'

describe DockingStation do
  it 'docking station responds' do
    expect(DockingStation.new).to respond_to :release_bike
  end

  it 'releases working bikes' do
    expect(Bike.new).to be_working
  end

#expect(subject.release_bike).to be_a Bike
#bike = Bike.new
#expect(bike).to be_working


end
