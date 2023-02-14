module listBooks
def list_books
   if @books.empty?
       puts 'No books in the catalog'
   else
       @books.each_with_index do |book, index|
           puts "#{index + 1}. #{book.label} - #{book.title} - #{book.author} - #{book.genre} - #{book.publish_date} - #{book.archived}"
       end
   end
end