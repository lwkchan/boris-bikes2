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
    fail 'No bikes available' unless @bikes.count >= 1
    @bikes.pop
  end

  def dock(bike)
    @bikes.push(bike)
  end

  def dock_full?
    if @bikes.count >= 20
       'Docking station full' if @bikes.count >= 20
    end
  end

end
