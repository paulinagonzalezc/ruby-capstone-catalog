require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date, label = nil, author = nil, genre = nil)
    id = Random.rand(1..1000)
    super(id, publish_date, label, author, genre)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super || Time.new.year - last_played_at > 2
  end
end
