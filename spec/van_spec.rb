require 'van'

describe Van do
  let (:broken_bike) {double('a broken bike', broken: true)}
  let (:docking_station) {double('a docking station',
    bikes: [broken_bike, broken_bike, broken_bike])}
  let (:garage) {double('a garage', broken_bikes: [])}

  it { is_expected.to respond_to(:move_bikes).with(2).arguments }
  it 'moves bikes from origin to destination' do
    subject.move_bikes(docking_station,garage)
    expect(garage.broken_bikes.count).to eq 3
  end

  # it 'drops bikes off at docking station or garage' do
  #   subject.move_bikes(docking_station,garage)
  # end

end
