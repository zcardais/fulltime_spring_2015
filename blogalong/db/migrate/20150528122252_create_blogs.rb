class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :blog_text

      t.timestamps null: false
    end
  end
end
