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

  # def show
  #   puts @bike #(.working?)
  #   puts @quantity
  # end

  def release_bike
    p "release"
    p @bike
    @bike
  end

  def dock(bike)
    p @bike, bike
    @bike = bike
    p @bike, bike

  end

end





