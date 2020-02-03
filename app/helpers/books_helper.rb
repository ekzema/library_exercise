module BooksHelper
  def book_is_taken?(id)
    history = History.find_by({book_id: id, user_id: session[:user_id], returned: nil})
    !history.nil?
  end
end
