class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :genre
      t.text :homepage
      t.text :image
      t.string :since
      t.string :activity
      t.timestamps
    end
  end
end
