class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :genre
      t.text :homepage_url
      t.text :image
      t.integer :year_id
      t.string :activity
      t.integer :area_id
      t.timestamps
    end
  end
end
