require './lib/bike.rb'

describe Bike do
  it 'respond to working method' do
    expect(Bike.new).to respond_to :working
  end

  it 'allows a bike to be set to working to be false' do
    subject.working = false
    expect(subject.working).to eq false
  end
end
