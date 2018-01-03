require './lib/bike.rb'

describe Bike do
  it 'respond to working method' do
    expect(Bike.new).to respond_to :working?
  end
end
