class DockingStation

  DEFAULT_CAPACITY = 20

 def initialize(capacity=DEFAULT_CAPACITY)
   @capacity = capacity
   @bikes = []
   @broken_bikes = []
 end

  attr_reader :bikes, :broken_bikes

  #same as
  # def bikes=(value)
  # @age = value
  #end

  # def show
  #   puts @bikes #(.working?)
  #   puts @quantity
  # end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike, working= true)
    fail 'Docking station full' if full?
    working ? @bikes.push(bike) : @broken_bikes.push(bike)
  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count + @broken_bikes.count >= @capacity
  end

end
