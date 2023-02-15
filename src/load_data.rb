require 'json'
require 'fileutils'
require_relative './music_album'
require_relative './genre'
<<<<<<< HEAD
require_relative './game'
require_relative './author'
=======
require_relative './book'
require_relative './movie'
require_relative './source'
>>>>>>> 9afecc369eb46eea10a2dc8a987f15fbbc9389bd

def load_data
  puts 'LOADING DATA...'
  load_albums
  load_genres
<<<<<<< HEAD
  load_games
  load_authors
=======
  load_books
  load_movies
  load_sources
>>>>>>> 9afecc369eb46eea10a2dc8a987f15fbbc9389bd
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

<<<<<<< HEAD
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
=======
def load_books
  books_data = []
  books_data = JSON.parse(File.read('./storage/books.json')) if File.exist?('./storage/books.json')
  books_data.each do |book|
    book = Book.new(book['title'], book['publisher'], book['publish_date'], book['cover_state'])
    @books << book
  end
end

def load_movies
  movies_data = []
  movies_data = JSON.parse(File.read('./storage/movies.json')) if File.exist?('./storage/movies.json')
  movies_data.each do |movie|
    movie = Movie.new(movie['silet'], movie['publish_date'])
    @movies << movie
  end
end

def load_sources
  sources_data = []
  sources_data = JSON.parse(File.read('./storage/sources.json')) if File.exist?('./storage/sources.json')
  sources_data.each do |sour|
    sour = Source.new(sour['name'])
    @sources << sour
  end
end
>>>>>>> 9afecc369eb46eea10a2dc8a987f15fbbc9389bd
