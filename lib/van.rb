class Van
  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def move_bikes(origin,destination)
    @bikes << origin.bikes.slice!(0.. -1)
    destination.broken_bikes = @bikes.flatten!
  end
end
