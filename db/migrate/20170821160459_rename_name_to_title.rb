class RenameNameToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :wikis, :name, :title
  end
end
