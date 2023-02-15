require_relative 'item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, publish_date, cover_state)
    super(nil, nil, nil, nil, publish_date)
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
