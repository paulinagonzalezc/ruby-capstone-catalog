require_relative 'item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, _publish_date, cover_state)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end


  private

  def can_be_archived?
    return true if @cover_state == 'bad'


    false
  end
end
