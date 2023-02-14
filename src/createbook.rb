require_relative 'book'
class CreateBook
  def initialize(_books)
    @books = []
  end

  def create_book
    puts 'Enter the title of the book'
    title = gets.chomp
    puts 'Enter the publisher of the book'
    publisher = gets.chomp
    puts 'Enter the publish date of the book'
    publish_date = gets.chomp
    puts 'Enter the cover state of the book'
    cover_state = gets.chomp
    book = Book.new(title, publisher, publish_date, cover_state)
    @books << book
  end
end
