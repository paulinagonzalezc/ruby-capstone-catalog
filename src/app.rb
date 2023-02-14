require_relative './music_album'
require_relative './movie'
require_relative './source'
require_relative './save_data'
require_relative './load_data'

class App
  def initialize(option)
    @option = option
    @albums = []
    @genres = []
    @books = []
    @movies = []
    @sources = []
  end


   # List all books.
  def list_books
    if @books.empty?
      puts 'Books list is empty'
    else
      @books.each do |book|
        puts "Id: #{book.id}, Title: #{book.title}, Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
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

  def add_album
    puts 'Is the album on spotify? [true/false]: '
    # YN?
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
    # YN?
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

  def save_data
    # save_book
    save_genre
    save_album
    save_movie
    save_source
    # save_game
  end

  def load
    load_data
  end

  def exit
    puts 'Thank you for using the app!'
    save_data
  end
end
