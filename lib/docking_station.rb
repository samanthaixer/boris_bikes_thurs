# require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(our_bike)
    @bike = our_bike
  end

end
