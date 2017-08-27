class RenameBodyToSummary < ActiveRecord::Migration[5.0]
  def change
    rename_column :chapters, :name, :title
    rename_column :chapters, :body, :summary
  end
end
