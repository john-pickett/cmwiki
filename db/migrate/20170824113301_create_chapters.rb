class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :body
      t.belongs_to :wiki, foreign_key: true

      t.timestamps
    end
  end
end
