require_relative 'Bike'
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bike'
  end

  def dock_bike(bike)
    @bike = bike
  end

  def bike_docked
  end

end
