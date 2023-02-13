class Item
  attr_reader: :id, :genre, :author, :label, :publish_date, :archived

  def initialize()
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = date
    @archived = false
  end
  
  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    (Date.today.year - Date.parse(@publish_date).year) > 10
  end
end