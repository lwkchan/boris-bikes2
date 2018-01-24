class DockingStation

 # def initialize(bike, quantity)
 #  @bike = bike
 #  @quantity = quantity
 #  end

  attr_reader :bike

  #same as
  # def bike=(value)
  # @age = value
  #end

  def show
    puts @bike #(.working?)
    puts @quantity
  end

  def release_bike
    return Bike.new
  end

  def dock(bike)

  end

end




