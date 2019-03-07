require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'Cannot release a bike - no bikes docked' unless @bike
    @bike

    # if @bike.nil?
    #   raise "Cannot release a bike - no bikes docked"
    # else
    #   @bike
    # end
  end

  def dock(our_bike)
    fail "Cannot dock bike - there is already a bike" if @bike
    @bike = our_bike
  end

end
