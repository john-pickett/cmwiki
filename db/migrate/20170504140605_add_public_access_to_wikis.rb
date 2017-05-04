class AddPublicAccessToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :public_access, :boolean, :default => true
  end
end
