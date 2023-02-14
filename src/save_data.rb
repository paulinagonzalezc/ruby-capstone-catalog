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