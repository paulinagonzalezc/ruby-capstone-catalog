require_relative './music_album'
require_relative './movie'
require_relative './source'
require_relative './save_data'
require_relative './load_data'
require_relative './genre'
require_relative './label'

class App
  def initialize(option)
    @option = option
    @albums = []
    @genres = []
    @books = []
    @movies = []
    @sources = []
    @labels = []
  end

  # List all books.
  def list_books
    if @books.empty?
      puts 'Books list is empty'
    else
      @books.each do |book|
        puts "Id: #{book.id}, Title: #{book.title}, Publisher: #{book.publisher}"
        puts "Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
      end
    end
    @option.show_options
  end

  # List all albums.
  def list_albums
    if @albums.empty?
      puts 'Albums list is empty'
    else
      @albums.each do |album|
        puts "Id: #{album.id}, On Spotify: #{album.on_spotify} Published: #{album.publish_date}"
      end
    end
    @option.show_options
  end

  # List all movies - 3
  def list_movies
    if @movies.empty?
      puts 'Movies list is empty'
    else
      @movies.each do |movie|
        puts "Id: #{movie.id}, Silet: #{movie.silet} Published: #{movie.publish_date}"
      end
    end
    @option.show_options
  end

  # List_games

  # List all genres.
  def list_genres
    if @genres.empty?
      puts 'Genre list is empty'
    else
      @genres.each do |gen|
        puts "Id: #{gen.id} Name: #{gen.name}"
      end
    end
    @option.show_options
  end

  # List lables
  def list_lables
    if @lables.empty?
      puts 'Lables list is empty'
    else
      @lables.each do |lable|
        puts "Id: #{lable.id}, Name: #{lable.name} Color: #{lable.color}"
      end
    end
    @option.show_options
  end

  # List authors

  # List all sources - 8
  def list_sources
    if @sources.empty?
      puts 'Source list is empty'
    else
      @sources.each do |sour|
        puts "Id: #{sour.id} Name: #{sour.name}"
      end
    end
    @option.show_options
  end

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

  # Add album
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

  # Add game

  # def add_lable
  #   puts 'Enter the name of the lable'
  #   name = gets.chomp
  #   puts 'Enter the color of the lable'
  #   color = gets.chomp
  #   lable = Lable.new(name, color)
  #   @lables << lable
  # end

  def save_data
    save_book
    save_genre
    save_album
    save_movie
    save_source
    # save_game
    # save_authors
  end

  def load
    load_data
  end

  def exit
    puts 'Thank you for using the app!'
    save_data
  end
end
