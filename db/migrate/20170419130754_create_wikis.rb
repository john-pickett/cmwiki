class CreateWikis < ActiveRecord::Migration[5.0]
  def change
    create_table :wikis do |t|
      t.string :name
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
