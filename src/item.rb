require 'date'

class Item
  attr_reader :id, :genre, :author, :source, :label, :publish_date, :archived

  def initialize(genre, author, source, label, publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def genre=(genre)
    @genre = genre
    genre.add_item(self)
  end

  def author=(author)
    @author = author
    author.add_item(self)
  end

  def source=(source)
    @source = source
    source.add_item(self)
  end

  def label=(label)
    @label = label
    label.add_item(self)
  end

  private

  def can_be_archived?
    (Date.today.year - Date.parse(@publish_date).year) > 10
  rescue ArgumentError
    false
  end
end
