require_relative '../src/movie'

describe Movie do
  before :each do
    @movie = Movie.new(true, '30/07/2000')
  end

  describe '#initialize' do
    it 'should return an instance of Movie' do
      expect(@movie).to be_instance_of Movie
    end
  end

  describe '#can_be_archived' do
    it 'takes two arguments to return if @archived and silet is true' do
      expect(@movie.can_be_archived?).to eq true
    end
  end

  describe '#publish_date' do
    it 'should return the publish date of the movie' do
      expect(@movie.publish_date).to eq '30/07/2000'
    end
  end

  describe '#silet' do
    it 'should return the value of the silet attribute' do
      expect(@movie.silet).to eq true
    end
  end
end
