require_relative 'Bike'
class DockingStation
  attr_reader :bikes_stored

  def initialize
    @bikes_stored = []
  end

  def release_bike
    raise 'No bike' if @bikes_stored.empty?
    @bikes_stored.pop
  end

  def dock_bike(bike)
    fail "No Spaces" if @bikes_stored.length >= 20
    @bikes_stored.push(bike)
  end

  def bike_docked
  end

end
