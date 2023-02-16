module ListMethods
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

  def list_games
    if @games.empty?
      puts 'Game list is empty'
    else
      @games.each do |game|
        puts "Id: #{game.id}, Multiplayer: #{game.multiplayer}"
        # puts "Published: #{game.publish_date}, Last_played_at: #{game.last_played_at}"
      end
    end
    @option.show_options
  end

  def list_labels
    if @labels.empty?
      puts 'Labels list is empty'
    else
      @lables.each do |lable|
        puts "Id: #{lable.id}, Name: #{lable.name} Color: #{lable.color}"
      end
    end
    @option.show_options
  end

  def list_authors
    if @authors.empty?
      puts 'Authors list is empty'
    else
      @authors.each do |author|
        puts "Id: #{author.id} First Name: #{author.first_name} Last Name: #{author.last_name}"
      end
    end
    @option.show_options
  end

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
end
