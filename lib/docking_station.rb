class DockingStation

 def initialize
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
    @bikes.count >= 20
  end

end
