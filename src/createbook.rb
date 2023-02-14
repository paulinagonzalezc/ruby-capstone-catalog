require_relative './book'
module CreateBook
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover state: '
    cover_state = gets.chomp
    puts 'Choose a genre:'
    puts '1. Fiction'
    puts '2. Non-fiction'
    puts '3. Poetry'
    puts '4. Drama'
    puts '5. Science'
    puts '6. History'
    puts '7. Biography'
    puts '8. Other'
    print 'Genre: '
    genre = gets.chomp
    case genre

    when '1'
      genre = 'Fiction'
    when '2'
      genre = 'Non-fiction'
    when '3'
      genre = 'Poetry'
    when '4'
      genre = 'Drama'
    when '5'
      genre = 'Science'
    when '6'
      genre = 'History'
    when '7'
      genre = 'Biography'
    when '8'
      genre = 'Other'
    else
      puts 'Invalid option'
    end
    print 'Author: '
    author = gets.chomp
    print 'Source: '
    source = gets.chomp
    print 'Label: '
    label = gets.chomp
    print 'Publish date: '
    date = gets.chomp
    book = Book.new(publisher, cover_state, genre, author, source, label, date)
    @books << book
    puts 'Book added successfully'
  end
end
