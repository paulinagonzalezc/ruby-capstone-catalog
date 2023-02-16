require_relative './item'

class Movie < Item
  attr_accessor :silet, :publish_date

  def initialize(silet, publish_date)
    id = Random.rand(1..1000)
    super(id, '', '', '', publish_date)
    @silet = silet == 'y'
    @archived = can_be_archived?
  end

  def can_be_archived?
    super || @silet == true
  end
end
