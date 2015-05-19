class AddRatingToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :rating, :string
  end
end
