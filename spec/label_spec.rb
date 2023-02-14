require_relative '../src/label'

describe Label do
  before :each do
    @label = Label.new('label1', 'red')
  end
  describe '#initialize' do
    it 'should return an instance of Label' do
      expect(@label).to be_instance_of Label
    end
  end
  describe '#title' do
    it 'should return the title of the label' do
      expect(@label.title).to eq 'label1'
    end
  end
  describe '#color' do
    it 'should return the color of the label' do
      expect(@label.color).to eq 'red'
    end
  end
  describe '#items' do
    it 'should return the items of the label' do
      expect(@label.items).to eq []
    end
  end
end
