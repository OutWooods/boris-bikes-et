require './lib/docking_station.rb'

describe DockingStation do
  it 'docking station responds' do
    expect(DockingStation.new).to respond_to :release_bike
  end

  it 'releases working bikes' do
    expect(Bike.new).to be_working
  end

  it 'responds to dock a bike' do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it 'shows a docked bike' do
    bike = Bike.new
    station = DockingStation.new
    station.dock_bike(bike)
    expect(station.bike).to eq(bike) 
  end

=begin
  it 'dock_bike responds to 1 arg' do
    expect(DockingStation.new).to receive(:dock_bike).with(Bike.new)
  end
=end

#expect(subject.release_bike).to be_a Bike
#bike = Bike.new
#expect(bike).to be_working


end
