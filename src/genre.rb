require_relative './item'

class Genre < Item
  attr_accessor :name, :items
  attr_reader :id

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
    super(@id, nil, nil, nil, nil)
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
