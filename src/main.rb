class Main
  def show_options
    puts "\nPlease choose an option by entering the number:
    1 - List all books
    2 - List all music albums
    3 - List all movies
    4 - List all games
    5 - Add a book
    6 - Add a music album
    7 - Add a movie
    8 - Add a game
    9 - Exit"
    option = gets.chomp
    select_option(option)
  end

  def select_option(option)
    list = {
      '1' => :list_books,
      '2' => :list_music_albums,
      '3' => :list_movies,
      '4' => :list_games,
      '5' => :add_book,
      '6' => :add_album,
      '7' => :add_movie,
      '8' => :add_game,
      '9' => :exit
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
