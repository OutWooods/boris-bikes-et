require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
   return raise("No bikes available") if @bike.nil?  
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end
end
