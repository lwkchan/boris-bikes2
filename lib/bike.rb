class Bike

  attr_accessor :broken

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end
