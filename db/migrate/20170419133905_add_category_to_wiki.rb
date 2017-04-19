class AddCategoryToWiki < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :category, :string
  end
end
