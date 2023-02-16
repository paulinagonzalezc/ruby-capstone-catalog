module AddMethods
  # Add book and lable
  def add_book
    puts 'Enter the title of the book'
    title = gets.chomp
    puts 'Enter the publisher of the book'
    publisher = gets.chomp
    puts 'Enter the publish date of the book [dd/mm/yyyy]'
    publish_date = gets.chomp
    puts 'Enter the cover state of the book'
    cover_state = gets.chomp
    book = Book.new(title, publisher, publish_date, cover_state)
    @books << book
    puts 'Enter the name of the label'
    name = gets.chomp
    puts 'Enter the color of the label'
    color = gets.chomp
    label = Label.new(name, color)
    @labels << label
    puts 'Book Added Succesfully'
    @option.show_options
  end

  def add_album
    puts 'Is the album on spotify? [y/n]: '
    on_spotify = gets.chomp
    puts 'When was the music album published [dd/mm/yyyy]?:'
    publish_date = gets.chomp.to_s
    @albums.push(MusicAlbum.new(on_spotify, publish_date))
    puts 'Add a genre'
    name = gets.chomp
    @genres.push(Genre.new(name))
    puts 'Music Album Added Succesfully'
    @option.show_options
  end

  def add_game
    puts 'Is the game multiplayer? [true/false]: '
    # YN?
    multiplayer = gets.chomp
    puts 'When was the game published [dd/mm/yyyy]?:'
    publish_date = gets.chomp.to_s
    puts 'Last played date  [dd/mm/yyyy]?:'
    last_played_at = gets.chomp.to_s
    @games.push(Game.new(multiplayer,
                         last_played_at, publish_date))
    puts 'Add author fullname'
    fullname = gets.chomp
    arr = fullname.split
    @authors.push(Author.new(arr[0], arr[1]))
    puts 'Game Added Succesfully'
    @option.show_options
  end

  # Add movie - 11
  def add_movie
    puts 'Is the movie on silet? [y/n]: '
    silet = gets.chomp
    puts 'When was the movie published [dd/mm/yyyy]?:'
    publish_date = gets.chomp.to_s
    @movies.push(Movie.new(silet, publish_date))
    puts 'Add a source'
    name = gets.chomp
    @sources.push(Source.new(name))
    puts 'Movie Added Succesfully'
    @option.show_options
  end
end
