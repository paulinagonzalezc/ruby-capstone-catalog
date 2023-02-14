require_relative '../src/genre'

describe Genre do
  before :each do
    @genre = Genre.new('Rock')
  end

  describe '#initialize' do
    it 'should return an instance of Genre' do
      expect(@genre).to be_instance_of Genre
    end

    it 'should set the name' do
      expect(@genre.name).to eq('Rock')
    end

    it 'should have an id' do
      expect(@genre.id).to_not be_nil
    end

    it 'should have an empty items array' do
      expect(@genre.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'should add an item to the items array' do
      item = double('Item')
      @genre.add_item(item)
      expect(@genre.items).to include(item)
    end
  end
end
