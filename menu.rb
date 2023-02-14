module Menu
  def show_options
    puts "\nPlease choose an option by entering the number:
    1 - List all books
    2 - List all music albums
    3 - List all movies
    4 - List of games
    5 - List all genres
    6 - List all labels
    7 - List all authors
    8 - List all sources
    9 - Add a book
    10 - Add a music album
    11 - Add a movie
    12 - Add a game
    0 - Exit"
    option = gets.chomp
    select_option(option)
  end

  def select_option(option)
    list = {
      '1' => :list_books, '2' => :list_albums, '3' => :list_movies, '4' => :list_games,
      '5' => :list_genres, '6' => :list_labels, '7' => :list_authors, '8' => :list_sources,
      '9' => :add_book, '10' => :add_album, '11' => :add_movie, '12' => :add_game,
      '0' => :exit
    }
    chosen = list[option]
    if chosen.nil?
      puts 'Select a number from the list'
      show_options
    else
      @app.send(chosen)
    end
  end
end
