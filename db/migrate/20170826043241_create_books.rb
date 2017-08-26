class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :body
      t.string :published_date
      t.string :category
      t.text :setting
      t.string :recommended_age
      t.text :sensitive_content
      t.text :book_synopsis

      t.timestamps
    end
  end
end
