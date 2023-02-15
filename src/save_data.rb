require 'json'
require 'fileutils'

def save_book
  arr = []
  @books.each do |book|
    obj = {
      'id' => book.id,
      'title' => book.title,
      'publisher' => book.publisher,
      'publish_date' => book.publish_date,
      'cover_state' => book.cover_state
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/books.json', JSON.generate(arr))
  puts 'Books saved successfully'
end

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

def save_movie
  arr = []
  @movies.each do |movie|
    obj = {
      'id' => movie.id,
      'silet' => movie.silet,
      'publish_date' => movie.publish_date
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/movies.json', JSON.generate(arr))
  puts 'Movie saved successfully'
end

def save_source
  arr = []
  @sources.each do |sour|
    obj = {
      'id' => sour.id,
      'name' => sour.name
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('storage')
  File.write('./storage/sources.json', JSON.generate(arr))
  puts 'Source saved successfully'
end
