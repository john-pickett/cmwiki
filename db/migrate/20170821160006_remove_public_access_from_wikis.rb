class RemovePublicAccessFromWikis < ActiveRecord::Migration[5.0]
  def change
    remove_column :wikis, :public_access, :boolean
  end
end
