require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike_collection
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
     @bike_collection = []
     @capacity = capacity
  end

  def release_bike
   return raise("No bikes available") if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock_bike(bike, working=true)
    return raise("Dock is full") if full?
    @bike_collection << bike
  end

  private
    def full?
      @bike_collection.length >= @capacity ? true : false
    end
end
