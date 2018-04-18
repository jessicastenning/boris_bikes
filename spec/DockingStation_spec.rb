require 'DockingStation'
require 'Bike'

describe DockingStation do
  let(:bike) { Bike.new }
  it { is_expected.to respond_to :release_bike }
  it "should raise error message if no bikes" do
    expect { subject.release_bike if subject.bike.nil? }.to raise_error
  end

  it {is_expected.to respond_to(:dock_bike).with(1).arguments}

  describe '#dock_bike' do
    it 'should refuse to dock if capacity is exceeded' do
      20.times { subject.dock_bike(bike) }
      expect{subject.dock_bike(bike)}.to raise_exception 'No Spaces'
    end
  end



  it "should give us the bike instance" do
    expect(subject.dock_bike(bike)).to include(be_instance_of(Bike))
  end
  it "should have an attribute bike instance" do
    subject.dock_bike(bike)
    expect(subject).to respond_to :bikes_stored
  end
  it "should tell us if there is a docked bike" do
    expect(subject).to respond_to :bike_docked
  end
  it "should return either nil or instance of bike" do
    expect(subject.bike_docked).to eq(nil).or(eq(be_instance_of(Bike)))
  end
end
