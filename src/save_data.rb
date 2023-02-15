require 'json'
require 'fileutils'

def save_album
  arr = []
  @albums.each do |album|
    obj = {
      'id' => album.id,
      'on_spotify' => album.on_spotify,
      'publish_date' => album.publish_date
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/albums.json', JSON.generate(arr))
  puts 'Album saved successfully'
end

def save_genre
  arr = []
  @genres.each do |genre|
    obj = {
      'id' => genre.id,
      'name' => genre.name
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/genres.json', JSON.generate(arr))
  puts 'Genre saved successfully'
end

def save_game
  arr = []
  @games.each do |game|
    obj = {
      'id' => game.id,
      'multiplayer' => game.multiplayer,
      'publish_date' => game.publish_date
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/games.json', JSON.generate(arr))
  puts 'Game saved successfully'
end

def save_author
  arr = []
  @authors.each do |author|
    obj = {
      'id' => author.id,
      'first_name' => author.first_name,
      'last_name' => author.last_name
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/authors.json', JSON.generate(arr))
  puts 'Author saved successfully'
end