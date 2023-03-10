require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date

  def initialize(on_spotify, publish_date)
    id = Random.rand(1..1000)
    super(id, '', '', '', publish_date)
    @on_spotify = on_spotify == 'y'
    @archived = can_be_archived?
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end
