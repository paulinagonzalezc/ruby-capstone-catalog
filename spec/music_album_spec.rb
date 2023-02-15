require_relative '../src/music_album'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new('y', '02/02/12')
  end

  describe '#initialize' do
    it 'should return an instance of MusicAlbum' do
      expect(@album).to be_instance_of MusicAlbum
    end
  end

  describe '#can_be_archived' do
    it 'takes two arguments to return if @archived and on_spotify is true' do
      expect(@album.can_be_archived?).to eq true
    end
  end

  describe '#publish_date' do
    it 'should return the publish date of the album' do
      expect(@album.publish_date).to eq '02/02/12'
    end
  end

  describe '#on_spotify' do
    it 'should return the value of the on_spotify attribute' do
      expect(@album.on_spotify).to eq true
    end
  end
end
