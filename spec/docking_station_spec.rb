require 'docking_station'

# With RSpec, we are always describing the behavior of classes,
# modules and their methods. The describe block is always used at the top to
# put specs in a context. It can accept either a class name, in which case the
# class needs to exist, or any string you'd like.

describe DockingStation do # syntax for testing class instance - accepts class name

  let(:bike) {double('a working bike', broken?: nil)}
  let(:broken_bike) {double('a broken bike', broken?: true)}

  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to(:bikes)}
  it {is_expected.to respond_to(:broken_bikes)}

  describe '#initialize' do
    context "with parameters" do
      let(:dockingstation) {DockingStation.new(10)}

      it "should create a docking station with a capacity of 10" do
        10.times { dockingstation.dock(bike) }
        expect { dockingstation.dock(bike) }.to raise_error "Docking station full"
      end
    end

    context "without parameters" do
      let(:dockingstation) {DockingStation.new}

      it "should create a docking station with a default capacity of 20" do
        DockingStation::DEFAULT_CAPACITY.times { dockingstation.dock(bike) }
        expect { dockingstation.dock(bike) }.to raise_error "Docking station full"
      end

    end
  end

  describe '#dock' do
    it "raises an error when the docking station is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error "Docking station full"
    end

  end

  describe '#release_bike' do

    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'only releases working bikes' do
      subject.dock(broken_bike)
      expect{subject.release_bike}.to raise_error 'No working bikes available'
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No working bikes available'
    end
  end
end



# be_XXX where XXX is name of method, responds to method call. eg. be_crying responds to crying? (true or false)
# the test will pass if the method returns true

# subject in line 11 is basically self. So we call method release_bike on class DockingStation.
# this method - when called - returns new instance of class Bike.
# we call it bike :P
