require 'DockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it {is_expected.to respond_to(:dock_bike).with(1).arguments}
end
