class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.text :image
      t.string :title
      t.text :file
      t.text :text
      t.integer :genre
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end