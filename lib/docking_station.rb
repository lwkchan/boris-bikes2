class DockingStation

  DEFAULT_CAPACITY = 20

 def initialize(capacity=DEFAULT_CAPACITY)
   @capacity = capacity
   @bikes = []
 end

  attr_reader :bikes

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

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes.push(bike)
  end

private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end

end
