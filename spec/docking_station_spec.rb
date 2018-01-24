require 'docking_station'

# With RSpec, we are always describing the behavior of classes,
# modules and their methods. The describe block is always used at the top to
# put specs in a context. It can accept either a class name, in which case the
# class needs to exist, or any string you'd like.

describe DockingStation do # syntax for testing class instance - accepts class name
  bike = Bike.new
  it { is_expected.to respond_to :release_bike}
  it 'releases working bikes' do
    p "Test 1"
    # bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working 
    p "End of test 1"
    # to check working returns false, use not_to eg. 
    # expect(bike).not_to be_working 
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to(:bike)}
  # it {expect { DockingStation.bike }.to raise_error("should have 0 bikes")}
  describe '#release_bike' do 
    it 'releases a bike' do 
      # bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end



# be_XXX where XXX is name of method, responds to method call. eg. be_crying responds to crying? (true or false)
# the test will pass if the method returns true

# subject in line 11 is basically self. So we call method release_bike on class DockingStation.
# this method - when called - returns new instance of class Bike.
# we call it bike :P
