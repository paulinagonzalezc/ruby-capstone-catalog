require 'json'
require 'fileutils'
require_relative './music_album'
require_relative './genre'

def load_data
  puts 'LOADING DATA...'
  load_albums
  load_genres
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
