class RemoveWikiIdFromChapters < ActiveRecord::Migration[5.0]
  def change
    remove_column :chapters, :wiki_id, :string
  end
end
