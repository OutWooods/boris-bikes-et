require_relative 'bike'




class DockingStation
  attr_reader :bike_collection

  def initialize
     @bike_collection = []
  end

  def release_bike
   return raise("No bikes available") if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock_bike(bike)
    return raise("Dock is full") if @bike_collection.length >= 20
    @bike_collection << bike
  end
end
