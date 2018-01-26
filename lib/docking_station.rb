class DockingStation

  DEFAULT_CAPACITY = 20

 def initialize(capacity=DEFAULT_CAPACITY)
   @capacity = capacity
   @bikes = []
   @broken_bikes = []
 end

  attr_reader :bikes, :broken_bikes

  def release_bike
    fail 'No working bikes available' if empty?# && @broken_bikes.empty?
  #  fail 'No working bikes available' if empty? && !@broken_bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bike.broken? ? @broken_bikes << bike : @bikes << bike
  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count + @broken_bikes.count >= @capacity
  end

end
