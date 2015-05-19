class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.text :bio
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
