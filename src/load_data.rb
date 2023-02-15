require 'json'
require 'fileutils'
require_relative './music_album'
require_relative './genre'
require_relative './game'
require_relative './author'

def load_data
  puts 'LOADING DATA...'
  load_albums
  load_genres
  load_games
  load_authors
end

def load_albums
  albums_data = []
  albums_data = JSON.parse(File.read('./storage/albums.json')) if File.exist?('./storage/albums.json')
  albums_data.each do |album|
    album = MusicAlbum.new(album['on_spotify'], album['publish_date'])
    @albums << album
  end
end

def load_genres
  genres_data = []
  genres_data = JSON.parse(File.read('./storage/genres.json')) if File.exist?('./storage/genres.json')
  genres_data.each do |genre|
    genre = Genre.new(genre['name'])
    @genres << genre
  end
end

def load_games
  games_data = []
  games_data = JSON.parse(File.read('./storage/games.json')) if File.exist?('./storage/games.json')
  games_data.each do |game|
    game = Game.new(game['id'], game['multiplayer'], game['publish_date'] )
    @games << game
  end
end

def load_authors
  authors_data = []
  authors_data = JSON.parse(File.read('./storage/authors.json')) if File.exist?('./storage/authors.json')
  authors_data.each do |author|
    author = Author.new(author['first_name'], author['last_name'])
    @authors << author
  end
end