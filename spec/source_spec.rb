require_relative '../src/source'

describe Source do
  before :each do
    @sour = Source.new('From a friend')
  end

  describe '#initialize' do
    it 'should return an instance of Source' do
      expect(@sour).to be_instance_of Source
    end

    it 'should set the name' do
      expect(@sour.name).to eq('From a friend')
    end

    it 'should have an id' do
      expect(@sour.id).to_not be_nil
    end

    it 'should have an empty items array' do
      expect(@sour.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'should add an item to the items array' do
      item = double('Item')
      @sour.add_item(item)
      expect(@sour.items).to include(item)
    end
  end
end
