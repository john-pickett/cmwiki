class AddBookToChapters < ActiveRecord::Migration[5.0]
  def change
    add_reference :chapters, :book, foreign_key: true
  end
end
