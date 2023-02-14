require_relative 'item.rb'

class Book < Item
 attr_accessor :title, :publisher, :cover_state

 def initialize(title, publisher, publish_date, cover_state)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end


     private

    def can_be_archived?
        if @cover_state == "bad"
            return true
        else
            return false
        end
    end

end