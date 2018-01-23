require 'docking_station'

# With RSpec, we are always describing the behavior of classes,
# modules and their methods. The describe block is always used at the top to
# put specs in a context. It can accept either a class name, in which case the
# class needs to exist, or any string you'd like.

describe DockingStation do # syntax for testing class instance - accepts class name
  it { is_expected.to respond_to :release_bike}
end
