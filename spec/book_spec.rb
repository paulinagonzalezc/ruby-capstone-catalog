require_relative '../src/book'

describe Book do
  before :each do
    @book = Book.new('Harry Potter', 'Bloomsbury', '02/02/12', 'good')
  end

  describe '#initialize' do
    it 'should return an instance of Book' do
      expect(@book).to be_instance_of Book
    end
  end

 describe '#publish_date' do
    it 'should return the publish date of the album' do
      expect(@book.publish_date).to eq '02/02/12'
    end
  end

  describe '#title' do
    it 'should return the title of the book' do
      expect(@book.title).to eq 'Harry Potter'
    end
  end

  describe '#publisher' do
    it 'should return the publisher of the book' do
      expect(@book.publisher).to eq 'Bloomsbury'
    end
  end

  describe '#cover_state' do
    it 'should return the cover state of the book' do
      expect(@book.cover_state).to eq 'good'
    end
  end
end