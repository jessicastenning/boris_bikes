require 'DockingStation'

describe DockingStation do
  it 'responds' do
    expect(DockingStation).to respond_to(release_bike)
  end
end
