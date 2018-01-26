require 'garage'

describe Garage do

  let(:broken_bike) {double('a broken bike', broken: true)}
  let(:garage) {Garage.new}
  #not responding to bike.broken in Garage class

  it {is_expected.to respond_to(:fix)}
  describe "#fix" do
    it "Fixes broken bikes" do
      garage.bikes = [broken_bike]
      subject.fix
      expect(broken_bike.broken).to be false
    end
  end
end
