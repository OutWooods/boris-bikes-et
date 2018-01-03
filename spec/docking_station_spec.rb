require './lib/docking_station.rb'

describe DockingStation do
  it 'a test' do
    expect(DockingStation.new).to respond_to :release_bike
  end
end

docking_station = DockingStation.new
