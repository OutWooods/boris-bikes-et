require_relative 'bike'


def initialize
   @bike_collection = []
end

class DockingStation
  attr_reader :bike_collection

  def release_bike
   return raise("No bikes available") if @bike_collection.empty?
    @bike_collection
  end

  def dock_bike(bike)
    return raise("Dock is full") if !@bike_collection.empty?
    @bike_collection << bike
  end
end
