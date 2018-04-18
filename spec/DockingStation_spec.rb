require 'DockingStation'

describe DockingStation do
  let(:bike) { subject.release_bike }
  it { is_expected.to respond_to :release_bike }
  it {is_expected.to respond_to(:dock_bike).with(1).arguments}
  it "should give us the bike instance" do 
    expect(subject.dock_bike(bike)).to be_instance_of(Bike)
  end
  it "should have an attribute bike instance" do
    subject.dock_bike(bike)
    expect(subject).to have_attributes(:bike => (be_instance_of(Bike)))
  end
end
