require_relative './item'

class Source < Item
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
    item.source = self
  end
end
