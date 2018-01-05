require './lib/docking_station.rb'

describe DockingStation do
  it 'docking station responds' do
    expect(DockingStation.new).to respond_to :release_bike
  end

  it 'releases working bikes' do
    station = DockingStation.new
    station.dock_bike(Bike.new)
    expect(station.release_bike.working).to eq true
  end

  it 'raise error if no bikes' do
    expect {DockingStation.new.release_bike }.to raise_error("No bikes available")
  end

  it 'it doesn\'t release a broken bike' do
    subject.dock_bike(Bike.new(false))
    expect {subject.release_bike }.to raise_error("Bike Broken")
  end

  it "accepts broken bikes" do
    broken_bike = Bike.new(false)
    subject.dock_bike(broken_bike)
    expect(subject.bike_collection.include?(broken_bike)).to be true 
  end

  it 'responds to dock a bike' do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it 'shows a docked bike' do
    bike = Bike.new
    station = DockingStation.new
    station.dock_bike(bike)
    expect(station.bike_collection.include?(bike)).to be true
  end

  it 'raise error if dock is full' do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { station.dock_bike(Bike.new) }
    expect {station.dock_bike(Bike.new) }.to raise_error("Dock is full")
  end

  it 'expects default capacity to equal 20' do
    expect(subject.capacity).to eq 20
  end

  it 'responds to working argument when docking' do
    expect(subject).to respond_to(:dock_bike).with(2).argument
  end

end



=begin
  it 'dock_bike responds to 1 arg' do
    expect(DockingStation.new).to receive(:dock_bike).with(Bike.new)
  end
=end

#expect(subject.release_bike).to be_a Bike
#bike = Bike.new
#expect(bike).to be_working
