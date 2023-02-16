require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(id, multiplayer, publish_date, last_played_at)
    super(id, '', '', '', publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super || Time.new.year - last_played_at > 2
  end
end
