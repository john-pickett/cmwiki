module BooksHelper

  def authorized?(user, book)
    user.id == book.user_id || user.role == "awesome"
  end

end
