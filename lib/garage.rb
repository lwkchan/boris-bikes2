require_relative 'bike'

class Garage

  attr_accessor :bikes

  def initialize
    @broken_bikes = []
    @bikes = []
  end

  def fix
    @bikes.each do |bike|
      bike.broken = false
      p bike
      p bike.broken
    end
  end

end
