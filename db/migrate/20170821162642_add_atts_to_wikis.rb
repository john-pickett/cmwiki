class AddAttsToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :published_date, :string
    add_column :wikis, :setting, :text
    add_column :wikis, :recommended_age, :text
    add_column :wikis, :sensitive_content, :text
    add_column :wikis, :book_synopsis, :text
  end
end
