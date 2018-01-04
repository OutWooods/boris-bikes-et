require_relative 'bike'


class DockingStation
  attr_reader :bike_collection

  def initialize
     @bike_collection = []
     @capacity = 20
  end

  def release_bike
   return raise("No bikes available") if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock_bike(bike)
    return raise("Dock is full") if full?
    @bike_collection << bike
  end

  private
    def full?
      @bike_collection.length >= 20  ? true : false
    end
end
