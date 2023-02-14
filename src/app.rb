require_relative './music_album'
require_relative './save_data'
require_relative './load_data'

class App
  def initialize(option)
    @option = option
    @albums = []
    @genres = []
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

  def save_data
    # save_book
    save_genre
    save_album
    # save_movie
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
