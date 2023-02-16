require_relative './music_album'
require_relative './game'
require_relative './author'
require_relative './movie'
require_relative './source'
require_relative './save_data'
require_relative './load_data'
require_relative './genre'
require_relative './label'
require_relative './list_methods'
require_relative './add_methods'

class App
  include ListMethods
  include AddMethods

  def initialize(option)
    @option = option
    @albums = []
    @genres = []
    @games = []
    @authors = []
    @books = []
    @movies = []
    @sources = []
    @labels = []
  end

  def save_data
    save_book
    save_genre
    save_album
    save_game
    save_author
    save_movie
    save_source
  end

  def load
    load_data
  end

  def exit
    puts 'Thank you for using the app!'
    save_data
  end
end
